<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* partial_steps.phtml */
class __TwigTemplate_1a714f5a79e8cfc00e988481c8475d11c15fe6e5cc16673e8d685e7486ea551c extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<div class=\"steps\">

<div class=\"grid_4 alpha";
        // line 3
        if ((($context["selected"] ?? null) == 1)) {
            echo " selected";
        }
        echo "\">
    <span>1</span>
    <p>";
        // line 5
        echo gettext("Select product");
        echo "</p>
</div>

<div class=\"grid_4";
        // line 8
        if ((($context["selected"] ?? null) == 2)) {
            echo " selected";
        }
        echo "\">
    <span>2</span>
    <p>";
        // line 10
        echo gettext("Configure");
        echo "</p>
</div>

<div class=\"grid_4";
        // line 13
        if ((($context["selected"] ?? null) == 3)) {
            echo " selected";
        }
        echo "\">
    <span>3</span>
    <p>";
        // line 15
        echo gettext("Confirm");
        echo "</p>
</div>

<div class=\"grid_4 omega";
        // line 18
        if ((($context["selected"] ?? null) == 4)) {
            echo " selected";
        }
        echo "\">
    <span>4</span>
    <p>";
        // line 20
        echo gettext("Checkout");
        echo "</p>
</div>

<div class=\"clear\"></div>
</div>";
    }

    public function getTemplateName()
    {
        return "partial_steps.phtml";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 20,  80 => 18,  74 => 15,  67 => 13,  61 => 10,  54 => 8,  48 => 5,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "partial_steps.phtml", "/var/www/html/bb-themes/boxbilling/html/partial_steps.phtml");
    }
}
