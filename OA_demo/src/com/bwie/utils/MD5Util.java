package com.bwie.utils;

import java.security.MessageDigest;
/**

 * 
 */
public class MD5Util {

	public final static String MD5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			byte[] strTemp = s.getBytes();
			// 娴ｈ法鏁D5閸掓稑缂揗essageDigest鐎电钖�
			MessageDigest mdTemp = MessageDigest.getInstance("MD5");
			mdTemp.update(strTemp);
			byte[] md = mdTemp.digest();
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte b = md[i];
				// 鐏忓棙鐥呮稉顏呮殶(int)b鏉╂稖顢戦崣灞界摟閼哄倸濮炵�碉拷
				str[k++] = hexDigits[b >> 4 & 0xf];
				str[k++] = hexDigits[b & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			return null;
		}
	}

	// 濞村鐦�  鐎靛棛鐖�   
	// MD5閸欘亜褰查崝鐘茬槕          閸︺劎鍤庣憴锝呯槕閿涙矮绮懛顏勭箒閺堝閲滃鍝勩亣MD5閸旂姴鐦戠�瑰奔浜掗崥搴ｆ畱娑擄拷娑擃亜绨�
	// System.out.println(MD5Util.MD5("1{:%9Iu&3@@@B"));
	public static void main(String[] args) {
		System.out.println(MD5Util.MD5("123456"));
		System.out.println(MD5Util.MD5("000000"));
		// 閻ф儳瀹虫稉濠呯珶閿涘本婀侀惃鍕秹缁旀瑱绱濋張澶夌娑擃亜宸辨径顪揇5閻ㄥ嫪绔存稉顏勭氨閿涘瞼鍔ч崥搴″讲娴犮儱鍘ょ拹瑙勭叀閿涘本鐓￠惃鍕樋娴滃棙鏁圭拹锟�
		System.out.println(MD5Util.MD5("1{:%9Iu&3@@@B"));
	}
}
