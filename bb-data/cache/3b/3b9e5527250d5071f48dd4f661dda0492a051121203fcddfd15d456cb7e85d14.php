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

/* mod_page_login.phtml */
class __TwigTemplate_8406f485109ab2afe0a200ed06abbe357fe89832841e4c30017b1890ae51b03b extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'meta_title' => [$this, 'block_meta_title'],
            'content' => [$this, 'block_content'],
            'js' => [$this, 'block_js'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate(((twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "ajax", [], "any", false, false, false, 1)) ? ("layout_blank.phtml") : ("layout_default.phtml")), "mod_page_login.phtml", 1);
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 3
        $macros["mf"] = $this->macros["mf"] = $this->loadTemplate("macro_functions.phtml", "mod_page_login.phtml", 3)->unwrap();
        // line 1
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_meta_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo gettext("Login / Sign up");
    }

    // line 6
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 7
        echo "
    <div class=\"h-block\">
        <div class=\"h-block-header\">
            <div class=\"icon\"><span class=\"big-light-icon i-profile\"></span></div>
            <h2>";
        // line 11
        echo gettext("Sign In / Create new account");
        echo "</h2>
            <p>";
        // line 12
        echo gettext("Become a member to participate in forum, contact support, order new services");
        echo "</p>
        </div>
        <div class=\"block\" id=\"login-to-account\" ";
        // line 14
        if (twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "register", [], "any", false, false, false, 14)) {
            echo "style=\"display:none;\"";
        }
        echo ">
            <div class=\"splitter\">
            <div class=\"grid_6 alpha\">
                <div class=\"box\" >
                    <div class=\"block\">
                        <h2>";
        // line 19
        echo gettext("Sign in");
        echo "</h2>
                        <form action=\"\" method=\"post\" id=\"client-login\">
                            <fieldset>
                                <legend>";
        // line 22
        echo gettext("Login to client area");
        echo "</legend>
                                <p>
                                    <label>";
        // line 24
        echo gettext("Email Address");
        echo ": </label>
                                    <input type=\"email\" name=\"email\" value=\"";
        // line 25
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "email", [], "any", false, false, false, 25), "html", null, true);
        echo "\" required=\"required\">
                                </p>

                                <p>
                                    <label>";
        // line 29
        echo gettext("Password");
        echo ": </label>
                                    <input type=\"password\" name=\"password\" value=\"";
        // line 30
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "password", [], "any", false, false, false, 30), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <input type=\"hidden\" name=\"remember\" value=\"1\" />
                                <input class=\"bb-button bb-button-submit\" type=\"submit\" value=\"";
        // line 33
        echo gettext("Login");
        echo "\">
                                <a class=\"bb-button\" href=\"";
        // line 34
        echo $this->extensions['Box_TwigExtensions']->twig_bb_client_link_filter("reset-password");
        echo "\">";
        echo gettext("Reset password");
        echo "</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

            <div class=\"grid_6 omega\">
                <div class=\"box\" ";
        // line 42
        if (twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "register", [], "any", false, false, false, 42)) {
            echo "style=\"display:none;\"";
        }
        echo ">
                    <h2>";
        // line 43
        echo gettext("Do not have an account yet?");
        echo "</h2>
                    <div class=\"block\">
                        <a style=\"margin: 30px 0 0 40px;\" class=\"bb-button bb-button-red bb-button-big\" href=\"#\" onclick=\"\$('#login-to-account').slideUp(); \$('#register-new-account').slideDown(); return false;\" >";
        // line 45
        echo gettext("Register");
        echo "</a>
                    </div>
                    ";
        // line 47
        if (twig_get_attribute($this->env, $this->source, ($context["guest"] ?? null), "extension_is_on", [0 => ["mod" => "oauth"]], "method", false, false, false, 47)) {
            // line 48
            echo "                        ";
            $this->loadTemplate("mod_oauth_buttons.phtml", "mod_page_login.phtml", 48)->display(twig_array_merge($context, ["redirect_to" => "client/me"]));
            // line 49
            echo "                    ";
        }
        // line 50
        echo "                </div>
            </div>
            <div class=\"clear\"></div>
        </div>
        </div>

        <div class=\"block\" id=\"register-new-account\" ";
        // line 56
        if ( !twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "register", [], "any", false, false, false, 56)) {
            echo "style=\"display:none;\"";
        }
        echo ">
            <form action=\"\" method=\"post\" id=\"create-profile\">
            <div class=\"grid_6 alpha\">
                <div class=\"box\">
                    ";
        // line 60
        $context["r"] = twig_get_attribute($this->env, $this->source, ($context["guest"] ?? null), "client_required", [], "any", false, false, false, 60);
        // line 61
        echo "                    <h2>";
        echo gettext("Enter your details below");
        echo "</h2>
                    <div class=\"block\">
                        <fieldset>
                            <legend>";
        // line 64
        echo gettext("Create new profile");
        echo "</legend>
                            <p>
                                <label>";
        // line 66
        echo gettext("Email Address");
        echo ": </label>
                                <input type=\"email\" name=\"email\" value=\"";
        // line 67
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "email", [], "any", false, false, false, 67), "html", null, true);
        echo "\" required=\"required\" id=\"reg-email\">
                            </p>
                            <p>
                                <label>";
        // line 70
        echo gettext("First Name");
        echo ": </label>
                                <input type=\"text\" name=\"first_name\" value=\"";
        // line 71
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "first_name", [], "any", false, false, false, 71), "html", null, true);
        echo "\" required=\"required\">
                            </p>
                            ";
        // line 73
        if (twig_in_filter("last_name", ($context["r"] ?? null))) {
            // line 74
            echo "                            <p>
                                <label>";
            // line 75
            echo gettext("Last Name");
            echo ": </label>
                                <input type=\"text\" name=\"last_name\" value=\"";
            // line 76
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "last_name", [], "any", false, false, false, 76), "html", null, true);
            echo "\" required=\"required\">
                            </p>
                            ";
        }
        // line 79
        echo "                            
                            ";
        // line 80
        if (twig_in_filter("company", ($context["r"] ?? null))) {
            // line 81
            echo "                            <p>
                                <label>";
            // line 82
            echo gettext("Company");
            echo ": </label>
                                <input type=\"text\" name=\"company\" value=\"";
            // line 83
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "company", [], "any", false, false, false, 83), "html", null, true);
            echo "\" required=\"required\">
                            </p>
                            ";
        }
        // line 86
        echo "                            
                            ";
        // line 87
        if (twig_in_filter("birthday", ($context["r"] ?? null))) {
            // line 88
            echo "                            <p>
                                <label>";
            // line 89
            echo gettext("Birthday");
            echo ": </label>
                                <input type=\"text\" name=\"birthday\" value=\"\">
                            </p>
                            ";
        }
        // line 93
        echo "                            
                            ";
        // line 94
        if (twig_in_filter("gender", ($context["r"] ?? null))) {
            // line 95
            echo "                            <p>
                                <label>";
            // line 96
            echo gettext("You are");
            echo ": </label>
                                <select name=\"gender\">
                                    <option value=\"male\">Male</option>
                                    <option value=\"female\">Female</option>
                                </select>
                            </p>
                            ";
        }
        // line 103
        echo "
                            ";
        // line 104
        $context["custom_fields"] = twig_get_attribute($this->env, $this->source, ($context["guest"] ?? null), "client_custom_fields", [], "any", false, false, false, 104);
        // line 105
        echo "                            ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["field_name"] => $context["field"]) {
            // line 106
            echo "                            ";
            if (twig_get_attribute($this->env, $this->source, $context["field"], "active", [], "any", false, false, false, 106)) {
                // line 107
                echo "                            <div class=\"control-group\">
                                <label class=\"control-label\" for=\"";
                // line 108
                echo twig_escape_filter($this->env, $context["field_name"], "html", null, true);
                echo "\">";
                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["field"], "title", [], "any", false, false, false, 108))) {
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["field"], "title", [], "any", false, false, false, 108), "html", null, true);
                } else {
                    echo " ";
                    echo twig_escape_filter($this->env, twig_capitalize_string_filter($this->env, $context["field_name"]), "html", null, true);
                    echo " ";
                }
                echo "</label>
                                <div class=\"controls\">
                                    <input type=\"text\" name=\"";
                // line 110
                echo twig_escape_filter($this->env, $context["field_name"], "html", null, true);
                echo "\" id=\"";
                echo twig_escape_filter($this->env, $context["field_name"], "html", null, true);
                echo "\" value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), $context["field_name"], [], "any", false, false, false, 110), "html", null, true);
                echo "\" ";
                if (twig_get_attribute($this->env, $this->source, $context["field"], "required", [], "any", false, false, false, 110)) {
                    echo "required=\"required\"";
                }
                echo ">
                                    <p class=\"help-block\"></p>
                                </div>
                            </div>
                            ";
            }
            // line 115
            echo "                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['field_name'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 116
        echo "                            
                            <p>
                                <label>";
        // line 118
        echo gettext("Password");
        echo ": </label>
                                <input type=\"password\" name=\"password\" value=\"\" required=\"required\" id=\"reg-password\">
                            </p>
                            
                            <p>
                                <label>";
        // line 123
        echo gettext("Password confirm");
        echo ": </label>
                                <input type=\"password\" name=\"password_confirm\" value=\"\" required=\"required\">
                            </p>
                            
                            ";
        // line 127
        echo twig_call_macro($macros["mf"], "macro_recaptcha", [], 127, $context, $this->getSourceContext());
        echo "

                        </fieldset>
                    </div>
                </div>
            </div>

            <div class=\"grid_6 omega\">
                <div class=\"box\" id=\"register-new-account\">
                    <h2>&nbsp;</h2>
                    <div class=\"block\">
                        <fieldset>
                            <legend>";
        // line 139
        echo gettext("Create new profile");
        echo "</legend>

                                ";
        // line 141
        if (twig_in_filter("address_1", ($context["r"] ?? null))) {
            // line 142
            echo "                                <p>
                                    <label>";
            // line 143
            echo gettext("Address");
            echo ": </label>
                                    <input type=\"text\" name=\"address_1\" value=\"";
            // line 144
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "address_1", [], "any", false, false, false, 144), "html", null, true);
            echo "\">
                                </p>
                                ";
        }
        // line 147
        echo "                                
                                ";
        // line 148
        if (twig_in_filter("address_2", ($context["r"] ?? null))) {
            // line 149
            echo "                                <p>
                                    <label>";
            // line 150
            echo gettext("Address 2");
            echo ": </label>
                                    <input type=\"text\" name=\"address_2\" value=\"";
            // line 151
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "address_2", [], "any", false, false, false, 151), "html", null, true);
            echo "\">
                                </p>
                                ";
        }
        // line 154
        echo "                                
                                ";
        // line 155
        if (twig_in_filter("city", ($context["r"] ?? null))) {
            // line 156
            echo "                                <p>
                                    <label>";
            // line 157
            echo gettext("City");
            echo ": </label>
                                    <input type=\"text\" name=\"city\" value=\"";
            // line 158
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "city", [], "any", false, false, false, 158), "html", null, true);
            echo "\">
                                </p>
                                ";
        }
        // line 161
        echo "                                
                                ";
        // line 162
        if (twig_in_filter("country", ($context["r"] ?? null))) {
            // line 163
            echo "                                <p>
                                    <label>";
            // line 164
            echo gettext("Country");
            echo ": </label>
                                    ";
            // line 165
            echo twig_call_macro($macros["mf"], "macro_selectbox", ["country", twig_get_attribute($this->env, $this->source, ($context["guest"] ?? null), "system_countries", [], "any", false, false, false, 165), twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "country", [], "any", false, false, false, 165), 0, "Select country"], 165, $context, $this->getSourceContext());
            echo "
                                </p>
                                ";
        }
        // line 168
        echo "                                
                                ";
        // line 169
        if (twig_in_filter("state", ($context["r"] ?? null))) {
            // line 170
            echo "                                <p>
                                    <label>";
            // line 171
            echo gettext("State");
            echo ": </label>
                                     ";
            // line 173
            echo "                                     <input type=\"text\" name=\"state\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "state", [], "any", false, false, false, 173), "html", null, true);
            echo "\" />
                                </p>
                                ";
        }
        // line 176
        echo "                                
                                ";
        // line 177
        if (twig_in_filter("postcode", ($context["r"] ?? null))) {
            // line 178
            echo "                                <p>
                                    <label>";
            // line 179
            echo gettext("Zip/Postal Code");
            echo ": </label>
                                    <input type=\"text\" name=\"postcode\" value=\"";
            // line 180
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "postcode", [], "any", false, false, false, 180), "html", null, true);
            echo "\">
                                </p>
                                ";
        }
        // line 183
        echo "                                
                                ";
        // line 184
        if (twig_in_filter("phone", ($context["r"] ?? null))) {
            // line 185
            echo "                                <p>
                                    <label>";
            // line 186
            echo gettext("Phone Number");
            echo ": </label>
                                    <br/>
                                    <input type=\"text\" name=\"phone_cc\" value=\"";
            // line 188
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "phone_cc", [], "any", false, false, false, 188), "html", null, true);
            echo "\" style=\"width: 40px\"> <input type=\"text\" name=\"phone\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "phone", [], "any", false, false, false, 188), "html", null, true);
            echo "\" style=\"width: 233px\">
                                </p>
                                ";
        }
        // line 191
        echo "                            <input class=\"bb-button bb-button-red bb-button-big\" type=\"submit\" value=\"";
        echo gettext("Register");
        echo "\" style=\"margin: 30px 0 0 70px;\">
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class=\"clear\"></div>
            </form>
        </div>
    </div>

";
    }

    // line 203
    public function block_js($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 204
        echo "<script type=\"text/javascript\">
\$(function() {

    \$('#password-reset').bind('submit',function(event){
        bb.post(
            'guest/client/reset_password',
            \$(this).serialize(),
            function(result) {
                bb.msg('Password reset confirmation email was sent');
            }
        );
        return false;
    });

    \$('#client-login').bind('submit',function(event){
        bb.post(
            'guest/client/login',
            \$(this).serialize(),
            function(result) {
                bb.redirect();
            }
        );
        return false;
    });

    \$('#create-profile').bind('submit',function(event){
        bb.post(
            'guest/client/create',
            \$(this).serialize(),
            function(result) {
                //login after registration
                var login_details = {
                    email: \$('#reg-email').val(),
                    password: \$('#reg-password').val()
                };
                bb.post(
                    'guest/client/login',
                    login_details,
                    function(result) {
                        bb.redirect();
                    }
                );
            }
        );
        return false;
    });

});
</script>
";
    }

    public function getTemplateName()
    {
        return "mod_page_login.phtml";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  512 => 204,  508 => 203,  492 => 191,  484 => 188,  479 => 186,  476 => 185,  474 => 184,  471 => 183,  465 => 180,  461 => 179,  458 => 178,  456 => 177,  453 => 176,  446 => 173,  442 => 171,  439 => 170,  437 => 169,  434 => 168,  428 => 165,  424 => 164,  421 => 163,  419 => 162,  416 => 161,  410 => 158,  406 => 157,  403 => 156,  401 => 155,  398 => 154,  392 => 151,  388 => 150,  385 => 149,  383 => 148,  380 => 147,  374 => 144,  370 => 143,  367 => 142,  365 => 141,  360 => 139,  345 => 127,  338 => 123,  330 => 118,  326 => 116,  320 => 115,  304 => 110,  291 => 108,  288 => 107,  285 => 106,  280 => 105,  278 => 104,  275 => 103,  265 => 96,  262 => 95,  260 => 94,  257 => 93,  250 => 89,  247 => 88,  245 => 87,  242 => 86,  236 => 83,  232 => 82,  229 => 81,  227 => 80,  224 => 79,  218 => 76,  214 => 75,  211 => 74,  209 => 73,  204 => 71,  200 => 70,  194 => 67,  190 => 66,  185 => 64,  178 => 61,  176 => 60,  167 => 56,  159 => 50,  156 => 49,  153 => 48,  151 => 47,  146 => 45,  141 => 43,  135 => 42,  122 => 34,  118 => 33,  112 => 30,  108 => 29,  101 => 25,  97 => 24,  92 => 22,  86 => 19,  76 => 14,  71 => 12,  67 => 11,  61 => 7,  57 => 6,  50 => 5,  46 => 1,  44 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "mod_page_login.phtml", "/var/www/html/bb-themes/boxbilling/html/mod_page_login.phtml");
    }
}
