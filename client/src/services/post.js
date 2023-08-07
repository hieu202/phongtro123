import axios from 'axios';
import axiosConfig from '../axiosConfig'

export const apiGetPosts= () => new Promise(async(resolve, reject) => {
    try {
        const response = await axiosConfig({
            method : 'GET',
            url : 'api/v1/post/all',
            
        })
        resolve(response)
    } catch (error) {
        reject(error);
    } 
})

export const apiGetPostsLimit = (page) => new Promise(async (resolve, reject) => {
    try {
        const response = await axiosConfig({
            method: 'get',
            url: `/api/v1/post/limit?page=${page}`,
            
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})
export const apiGetPostsLimitByPrice = (page, minPrice, maxPrice) => new Promise(async (resolve, reject) => {
    try {
        const response = await axiosConfig({
            method: 'get',
            url: `/api/v1/post/limit/price?page=${page}&minPrice=${minPrice}&maxPrice=${maxPrice}`,
            
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})
export const apiGetPostsLimitByAcreage = (page, minAcreage, maxAcreage) => new Promise(async (resolve, reject) => {
    try {
        const response = await axiosConfig({
            method: 'get',
            url: `/api/v1/post/limit/acreage?page=${page}&minAcreage=${minAcreage}&maxAcreage=${maxAcreage}`,
            
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})
export const apigetPostsByPhone = (phone) => new Promise(async (resolve, reject) => {
    try {
        const response = await axiosConfig({
            method: 'get',
            url: `/api/v1/post/?phone=${phone}`,
            
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})
export const apiUploadImages = (images) => new Promise(async (resolve, reject) => {
    try {
        const response = await axios({
            method: 'post',
            url: `https://api.cloudinary.com/v1_1/${process.env.REACT_APP_CLOUD_NAME}/image/upload/`,
            data: images,
        })
        resolve(response)

    } catch (error) {
        reject(error)
    }
})
export const apiAddPosts= (payload) => new Promise(async(resolve, reject) => {
    try {
        const response = await axiosConfig({
            method : 'POST',
            url : 'api/v1/post/create',
            data: payload,
        })
        resolve(response)
    } catch (error) {
        reject(error);
    } 
})