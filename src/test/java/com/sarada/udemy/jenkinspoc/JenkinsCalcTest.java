package com.sarada.udemy.jenkinspoc;

import static org.junit.Assert.*;

import org.junit.Test;

public class JenkinsCalcTest {

	@Test
	public void addtest() {
		//fail("Not yet implemented");
		Jenkinscalculator myCalc = new Jenkinscalculator();
		assertEquals(10, myCalc.addNumber(5,5));
	}

	
	@Test
	public void subtracttest() {
		//fail("Not yet implemented");
		Jenkinscalculator myCalc = new Jenkinscalculator();
		assertEquals(5, myCalc.subtractNumber(10,5));
	}

}
