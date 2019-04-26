<?php

use PHPUnit\Framework\TestCase;

final class HelloWorldTest extends TestCase {
    
    public function testHelloWorld()
    {
        $t = new Teste();
        $this->assertEquals(1,$t->identidade());
    }

}