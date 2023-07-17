export const path = {
    HOME: '/*',
    HOME__PAGE: ':page',
    LOGIN: 'login',
    TIM_NGUOI_O_GHEP: 'tim-nguoi-o-ghep',
    CHO_THUE_CAN_HO: 'cho-thue-can-ho',
    CHO_THUE_MAT_BANG: 'cho-thue-mat-bang',
    NHA_CHO_THUE: 'nha-cho-thue',
    CHO_THUE_PHONG_TRO: 'cho-thue-phong-tro',
    DETAL_POST__TITLE__POSTID: 'chi-tiet/:title/:postId',
    SEARCH: 'tim-kiem',
    SYSTEM: '/he-thong/*',
    CREATE_POST: 'tao-moi-bai-dang'
}
export const text = {
    HOME_TITLE: 'Kênh thông tin Phòng Trọ số 1 Việt Nam',
    HOME_DESCRIPTION: "Kênh thông tin Phòng Trọ số 1 Việt Nam - Website đăng tin cho thuê phòng trọ, nhà nguyên căn, căn hộ, ở ghép nhanh, hiệu quả với 100.000+ tin đăng và 2.500.000 lượt xem mỗi tháng."
}
export const location = [
    {
        id: 'hcm',
        name: 'Phòng trọ Hồ Chí Minh',
        image: 'https://phongtro123.com/images/location_hcm.jpg'
    },
    {
        name: 'Phòng trọ Hà Nội',
        image: 'https://phongtro123.com/images/location_hn.jpg',
        id: 'hn',
    },
    {
        name: 'Phòng trọ Đà nẵng',
        image: 'https://phongtro123.com/images/location_dn.jpg',
        id: 'dn',
    },
]

export const price = [
    {
        code: 1,
        left: [
            { code: '1', value: 'Dưới 1 triệu', arr: [0, 1] },
            { code: '3', value: 'Từ 2 đến 3 triệu', arr: [2, 3]  },
            { code: '5', value: 'Từ 5 đến 7 triệu', arr: [5, 7]  },
            { code: '7', value: 'Từ 10 đến 15 triệu', arr: [10, 15]  }
        ]
    },
    {
        code: 2,
        right: [
            { code: '2', value: 'Từ 1 đến 2 triệu', arr: [1, 2]  },
            { code: '4', value: 'Từ 3 đến 5 triệu', arr: [3, 5]  },
            { code: '6', value: 'Từ 7 đến 10 triệu', arr: [7, 10] },
            { code: '8', value: 'Trên 15 triệu', arr: [15, 100]  }
        ]
    }

]
export const area = [
    {
        code: 1,
        left: [
            { code: '1', value: 'Dưới 20m²', arr: [0, 20] },
            { code: '3', value: 'Từ 30 đến 50m²', arr: [30, 50] },
            { code: '5', value: 'Từ 70 đến 90m²', arr: [70, 90] },
            
        ]
    },
    {
        code: 2,
        right: [
            { code: '2', value: 'Từ 20 đến 30m²', arr: [20, 30] },
            { code: '4', value: 'Từ 50 đến 70m²', arr: [50, 70] },
            { code: '6', value: 'Trên 90m²', arr: [90, 1000] },
        ]
    }

]

