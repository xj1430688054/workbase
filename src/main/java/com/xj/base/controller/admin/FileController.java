package com.xj.base.controller.admin;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.xj.base.common.FileUtils;
import com.xj.base.config.WebMvcConfig;
import com.xj.base.controller.BaseController;

@Controller
public class FileController extends BaseController{
	@Autowired
	private ServletContext servletContext ;
	
	
    @RequestMapping("/upload")
    @ResponseBody
    public void upload(@RequestParam("file") MultipartFile file,Model model)  {
        if (file.isEmpty()) {
        }
        String fileName = file.getOriginalFilename();
        String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
        fileName=new Date().getTime()+"_"+new Random().nextInt(1000)+fileF;//新的文件名

        File dest = null;
        String os = System.getProperty("os.name");
        System.out.println(os);
            String path = (WebMvcConfig.URL ).replaceAll("file:", "");
            System.out.println(path);
            dest= new File(path + fileName);
      
        model.addAttribute("src","img/"+fileName);
        try {
            file.transferTo(dest);
        } catch (IOException e) {
        	e.printStackTrace();
            
        }

    	
    	
    	
    	
    }    	
    	


}
