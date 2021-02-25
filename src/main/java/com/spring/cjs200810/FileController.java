package com.spring.cjs200810;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
@RequestMapping("/file")
public class FileController {
	
	@RequestMapping(value="/gameListImgUpload",method=RequestMethod.POST)
	@ResponseBody
	public void gameListImgUploadGet(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile) throws Exception{
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		JsonObject json = new JsonObject();
		PrintWriter out = response.getWriter();
		OutputStream output = null;
		MultipartFile upload = multiFile.getFile("upload");
		
					
		String fileName = upload.getOriginalFilename();
		byte[] bytes = upload.getBytes();
		ServletContext context = request.getSession().getServletContext();
		String uploadPath = context.getRealPath("/")+"resources/gameListImg/";
		
		File uploadFile = new File(uploadPath);
		if(!uploadFile.exists()) {
			uploadFile.mkdirs();
		}
		
		fileName = Long.toString(System.currentTimeMillis())+"_"+fileName;
		uploadPath = uploadPath+fileName;
		output = new FileOutputStream(new File(uploadPath));
		output.write(bytes);
		
		String fileUrl = request.getContextPath()+"/resources/gameListImg/"+fileName;
		
		json.addProperty("uploaded", 1);
		json.addProperty("fileName", fileName);
		json.addProperty("url", fileUrl);
		
		out.println(json);
		System.out.println(json);
	}
}
