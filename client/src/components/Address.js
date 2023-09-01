import React, { memo, useEffect, useState } from 'react'
import { Select, InputReadOnly } from '../components'
import { apiGetPublicProvinces, apiGetPublicDistrict, apiGetPublicWard } from '../services/app'
import { useSelector } from 'react-redux'

const Address = ({ setPayload, invalidFields, setInvalidFields }) => {

    const {dataEdit} = useSelector(state => state.post)
    // console.log(dataEdit)

    const [provinces, setProvinces] = useState([])
    const [districts, setDistricts] = useState([])
    const [wards, setWards] = useState([])
    const [province, setProvince] = useState('')
    const [district, setDistrict] = useState('')
    const [ward, setWard] = useState('')
    const [reset, setReset] = useState(false)
    const [street, setStreet] = useState('')

    useEffect(() => {
        setStreet(dataEdit?.street !== '' ? dataEdit.street : '');

        let foundProvince = provinces.length > 0  && provinces?.find(item => {
            return item.province_name?.trim() === dataEdit?.province?.trim()
        })
        setProvince(foundProvince && foundProvince.province_id );

        
        
        // console.log(addressArr[addressArr.length - 2]);
    }, [provinces])

    useEffect(() => {
        let addressArr = dataEdit?.address?.split(',');

        let foundDistrict = districts.length > 0  && districts?.find(item => {
            return item.district_name?.trim() === addressArr[addressArr.length - 2]?.trim()
        })
        setDistrict(foundDistrict && foundDistrict.district_id)
    }, [districts])
    useEffect(() => {
        let addressArr = dataEdit?.address?.split(',');

        let foundWard = wards.length > 0  && wards?.find(item => {
            return item.ward_name?.trim() === addressArr[addressArr.length - 3]?.trim()
        })
        setWard(foundWard && foundWard.ward_id);
    }, [wards])
    useEffect(() => {
        const fetchPublicProvince = async () => {
            const response = await apiGetPublicProvinces()
            if (response.status === 200) {
                setProvinces(response?.data.results)
            }
        }
        fetchPublicProvince()
    }, [])
    useEffect(() => {
        setDistrict(null)
        const fetchPublicDistrict = async () => {
            const response = await apiGetPublicDistrict(province)
            if (response.status === 200) {
                setDistricts(response.data?.results)
            }
        }
        province && fetchPublicDistrict()
        !province ? setReset(true) : setReset(false)
        !province && setDistricts([])
    }, [province])
    useEffect(() => {
        setWard(null)
        const fetchPublicWard = async () => {
            const response = await apiGetPublicWard(district)
            if (response.status === 200) {
                setWards(response.data?.results)
            }
        }
        district && fetchPublicWard()
        !district ? setReset(true) : setReset(false)
        !district && setWards([])
    }, [district])
    useEffect(() => {
        setPayload(prev => ({
            ...prev,
            address: `${street ? `${street}, ` : ''}${ward ? `${wards?.find(item => item.ward_id === ward)?.ward_name}, ` : ''}${district ? `${districts?.find(item => item.district_id === district)?.district_name}, ` : ''}${province ? provinces?.find(item => item.province_id === province)?.province_name.replace(/(Thành phố|Tỉnh)\s*/g, '') : ''}`,
            province: province ? provinces?.find(item => item.province_id === province)?.province_name : '',
            street : street,
        }))

    }, [street, province, district, ward])
    return (
        <div>
            <h2 className='font-semibold text-xl py-4'>Địa chỉ cho thuê</h2>
            <div className='flex flex-col gap-4'>
                <div className='flex items-center gap-4'>
                    <Select invalidFields= {invalidFields} setInvalidFields={setInvalidFields} type='province' value={province} setValue={setProvince} options={provinces} label='Tỉnh/Thành phố' />
                    <Select invalidFields= {invalidFields} setInvalidFields={setInvalidFields} reset={reset} type='district' value={district} setValue={setDistrict} options={districts} label='Quận/Huyện' />
                    <Select invalidFields= {invalidFields} setInvalidFields={setInvalidFields} reset={reset} type='ward' value={ward} setValue={setWard} options={wards} label='Phường/Xã' /><br />
                </div>
                <label className='font-medium'>Đường/Thôn</label>
                <input id="street" className='border border-gray-300 p-2 rounded-md' value={street} onChange={(e) => setStreet(e.target.value)} />

                <InputReadOnly
                    label='Địa chỉ chính xác'
                    value={`${street ? `${street}, ` : ''}${ward ? `${wards?.find(item => item.ward_id === ward)?.ward_name}, ` : ''}${district ? `${districts?.find(item => item.district_id === district)?.district_name}, ` : ''}${province ? provinces?.find(item => item.province_id === province)?.province_name : ''}`}
                />

            </div>
        </div>
    )
}

export default memo(Address)