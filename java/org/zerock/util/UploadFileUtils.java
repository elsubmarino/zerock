package org.zerock.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UploadFileUtils {
	private static final Logger logger=LoggerFactory.getLogger(UploadFileUtils.class);
	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception{
		return null;
	}
	
	private static String calcPath(String uploadPath){
		Calendar cal=Calendar.getInstance();
		
		String yearPath=File.separator+cal.get(Calendar.YEAR);
		String monthPath=yearPath+File.separator+new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		String datePath=monthPath+File.separator+new Deci
	}
}
