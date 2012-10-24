package com.JqueryDemo.Logic;

import java.io.PrintWriter;

import java.io.IOException;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.runtime.ProcessInstance;

public class ActivitiController {
	ProcessEngine processEngine=null;
	String process;

	public ActivitiController(String _process) {
		process=_process;
		StartActivitiEngine();
	}
	
	public void StartActivitiEngine(){
		ProcessEngines.init();
		processEngine = ProcessEngineConfiguration
				.createStandaloneProcessEngineConfiguration()
				.setJdbcUrl("jdbc:mysql://localhost:3306/psodemo")
				.setJdbcDriver("com.mysql.jdbc.Driver").setJdbcUsername("root")
				.setJdbcPassword("admin").setJobExecutorActivate(true)
				.buildProcessEngine();
		ProcessEngines.registerProcessEngine(processEngine);		
	}
	
	public void CreateNewActivitiAprovalProcess(){
		RepositoryService repositoryService = processEngine.getRepositoryService();
		RuntimeService runtimeService = processEngine.getRuntimeService();
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(process);
	}

}
