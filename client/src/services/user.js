import axios from '../axiosConfig'

export const apiGetCurrent = (phone) => new Promise(async (resolve, reject) => {
    try {
        const response = await axios({
            method: 'get',
            url: `api/user/get_info?phone=${phone}`,
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})