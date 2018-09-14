package com.wencst.server.aps.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wencst.server.aps.dao.BomBStockDao;
import com.wencst.server.aps.dao.BomConfigDao;
import com.wencst.server.aps.dao.BomStockDao;
import com.wencst.server.aps.dao.ProductPlanDao;
import com.wencst.server.aps.dao.PurchasePlanDao;
import com.wencst.server.aps.dao.PurchaseResultDao;
import com.wencst.server.aps.model.BomBstock;
import com.wencst.server.aps.model.BomConfig;
import com.wencst.server.aps.model.BomStock;
import com.wencst.server.aps.model.ProductPlan;
import com.wencst.server.aps.model.PurchasePlan;
import com.wencst.server.aps.model.PurchaseResult;

@RestController
public class DataController {

	@Autowired
	BomConfigDao bcd;
	@Autowired
	BomStockDao bsd;
	@Autowired
	ProductPlanDao ppd;
	@Autowired
	PurchasePlanDao pupd;
	@Autowired
	PurchaseResultDao purd;
	@Autowired
	BomBStockDao bbd;
	
	@GetMapping("/getRelations")
	public Map<String, Object> getRelation(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page bcl = bcd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}

	@GetMapping("/getBomBStock")
	public Map<String, Object> getBomBStock(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page<BomBstock> bcl = bbd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}
	@GetMapping("/getAllRelations")
	public Map<String, Object> getAllRelation(){
		List<BomConfig> bcl = bcd.findAll();
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl);
		res.put("msg","");
		res.put("count", bcl.size());
		res.put("code", 0);
		return res;
	}
	@GetMapping("/getStock")
	public Map<String, Object> getStock(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page<BomStock> bcl = bsd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}

	@GetMapping("/getProductPlan")
	public Map<String, Object> getProductPlan(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page<ProductPlan> bcl = ppd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}
	@GetMapping("/getPurchasePlan")
	public Map<String, Object> getPurchasePlan(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page<PurchasePlan> bcl = pupd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}
	@GetMapping("/getPurchaseResult")
	public Map<String, Object> getPurchaseResult(@RequestParam int page, @RequestParam int limit){
		Pageable pa = PageRequest.of(page-1, limit);
		Page<PurchaseResult> bcl = purd.findAll(pa);
		Map<String,Object> res = new HashMap<String,Object>();
		res.put("data", bcl.getContent());
		res.put("count", bcl.getTotalElements());
		res.put("msg","no messages");
		res.put("code", 0);
		return res;
	}
}
