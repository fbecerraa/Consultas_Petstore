package config;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Assert;
import org.junit.Test;

public class RunnerKarate
{
    @Test
    public void testKarate()
    {
        Results results = Runner.path("classpath:features").tags("@prueba").parallel(1);
        Assert.assertEquals(results.getErrorMessages(), results.getFailCount(),0);
    }
}