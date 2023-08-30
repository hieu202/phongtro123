const validate = (payload, setInvalidFileds) => {
    let invalids = 0;
    let fields = Object.entries(payload);
    fields.forEach(item => {
      if (item[1] === ''|| item[1] ==="   ") {
        setInvalidFileds(prev => [...prev, {
          name: item[0],
          message: 'Bạn không được để trống trường này'
        }])
        invalids++;
      }
    })
    fields.forEach(item => {
      switch (item[0]) {
        case 'password':
          if (item[1].length < 6) {
            setInvalidFileds(prev => [...prev, {
              name: item[0],
              message: 'Mật khẩu phải có tối thiểu 6 ký tự'
            }])
            invalids++;
          }
          break;
        case 'phone':
          if (!+item[1]) {
            setInvalidFileds(prev => [...prev, {
              name: item[0],
              message: 'Số điện thoại không hợp lệ'
            }])
            invalids++;
          }
          break;
        default:
          break;
      }
    })
    return invalids;
  }
export default validate