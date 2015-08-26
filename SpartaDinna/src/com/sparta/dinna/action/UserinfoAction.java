package com.sparta.dinna.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sparta.dinna.entity.UserInfo;
import com.sparta.dinna.service.UserinfoService;
import org.slave4j.orm.PageData;
import org.slave4j.utils.WebUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dinna/userinfo")
public class UserinfoAction
{
	@Resource
	private UserinfoService userinfoService;

	@RequestMapping("/list")
	public ModelMap list(HttpServletRequest request)
	{
		PageData<UserInfo> pageData = new PageData<UserInfo>();
		//给pageData设置参数
		WebUtils.setPageDataParameter(request, pageData);
		pageData = userinfoService.find(pageData);

		return new ModelMap(pageData);
	}

	@RequestMapping(value = "/new")
	public String addForm(Model model)
	{
		return "/dinna/userinfo/input";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editForm(@PathVariable("id") Integer id, Model model)
	{
		UserInfo userinfo = userinfoService.find(id);
		model.addAttribute(userinfo);
		return "/dinna/userinfo/input";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(UserInfo userinfo)
	{
		if (userinfo.isNew())
		{
			userinfoService.save(userinfo);
		} else
		{
			userinfoService.update(userinfo);
		}

		return "redirect:/dinna/userinfo/list";//重定向
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Integer id)
	{
		userinfoService.delete(id);
		return "redirect:/dinna/userinfo/list";//重定向
	}

	@RequestMapping(value = "/visible/{id}")
	public String visible(@PathVariable("id") Integer id)
	{
		userinfoService.visible(id);
		return "redirect:/dinna/userinfo/list";//重定向
	}

	@RequestMapping(value = "/unVisible/{id}")
	public String unVisible(@PathVariable("id") Integer id)
	{
		userinfoService.unVisible(id);
		return "redirect:/dinna/userinfo/list";//重定向
	}

	@InitBinder
	public void InitBinder(WebDataBinder dataBinder)
	{
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

}
