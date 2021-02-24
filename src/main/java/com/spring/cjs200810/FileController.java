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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
@RequestMapping("/file")
public class FileController {
	
	@RequestMapping(value="/gameListImgUpload",method=RequestMethod.POST)
	@ResponseBody
	public String imgUploadPost(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile) throws Exception{
		JsonObject json = new JsonObject();
		PrintWriter out = null;
		OutputStream output = null;
		MultipartFile file = multiFile.getFile("upload");
		System.out.println("1");
		if(file!=null) {
			if(file.getSize()>0 && StringUtils.isBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
					
					String fileName = file.getName();
					byte[] bytes = file.getBytes();
					ServletContext context = request.getSession().getServletContext();
					String uploadPath = context.getRealPath("/gameListImg");
					System.out.println("2");
					File uploadFile = new File(uploadPath);
					if(!uploadFile.exists()) {
						uploadFile.mkdirs();
					}
					System.out.println("3");
					fileName = Long.toString(System.currentTimeMillis())+"_"+file.getName();
					uploadPath = uploadPath+"/"+fileName;
					output = new FileOutputStream(new File(uploadPath));
					output.write(bytes);
					System.out.println("4");
					out = response.getWriter();
					response.setContentType("text/html");
					String fileUrl = request.getContextPath()+"/gameListImg/"+fileName;
					System.out.println("5");
					json.addProperty("uploaded", 1);
					json.addProperty("fileName", fileName);
					json.addProperty("url", fileUrl);
					System.out.println("6");
					out.println(json);
					System.out.println("7");
				}
			}
		}
		
		return null;
	}
}
