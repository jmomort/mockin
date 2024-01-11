// sign jwts
import jwt from 'jsonwebtoken'
import jwkToPem from 'jwk-to-pem'

import jwk from './mock.private.jwk.js'
const pem = jwkToPem(jwk.private,{private:true})  

import jwkWrong from './wrong.private.jwk.js'
const pemWrong = jwkToPem(jwkWrong.private,{private:true})  


const sign = async function (payload, newOptions, wrong) {
    if (!jwk)
        return new Error('no key found')
    const options = {
        keyid:      jwk.private.kid,
        algorithm: 'RS256',
        ...newOptions || {}
    }
    if (!payload.exp && !options.expiresIn)
        options.expiresIn = '5m'
    const token = jwt.sign( payload, wrong ? pemWrong : pem, options)  
    return token
}

export default sign

