package ui;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author ri
 */
public class LangStringValidatorTest {
    
    public LangStringValidatorTest() {
    }
    
    
    @Test
    public void testValid() {
        System.out.println("* LangStringValidator.valid");     
        assertTrue(LangStringValidator.valid("ru"));
        assertTrue(LangStringValidator.valid("en"));
        assertTrue(LangStringValidator.valid("ua"));
        assertFalse(LangStringValidator.valid(null));
        assertFalse(LangStringValidator.valid("noLang"));

    }
    
}
