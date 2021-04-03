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

/* mod_client_profile.phtml */
class __TwigTemplate_f9ecf24e88481f2ca4c96d10d3c993d305f2c9b7c4a5141854a8362eb531690c extends \Twig\Template
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
        return $this->loadTemplate(((twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "ajax", [], "any", false, false, false, 1)) ? ("layout_blank.phtml") : ("layout_default.phtml")), "mod_client_profile.phtml", 1);
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_meta_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo gettext("Profile details");
    }

    // line 5
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 6
        echo "
";
        // line 7
        $macros["mf"] = $this->loadTemplate("macro_functions.phtml", "mod_client_profile.phtml", 7)->unwrap();
        // line 8
        $context["profile"] = twig_get_attribute($this->env, $this->source, ($context["client"] ?? null), "client_get", [], "any", false, false, false, 8);
        // line 9
        echo "
<div class=\"h-block\">
        <div class=\"h-block-header\">
            <div class=\"icon\"><span class=\"big-light-icon i-profile\"></span></div>
            <h2>";
        // line 13
        echo gettext("Profile details");
        echo "</h2>
            <p>";
        // line 14
        echo gettext("Keep your profile up to date");
        echo "</p>
        </div>
    <div class=\"block conversation\">
        <div class=\"widget simpleTabs tabsRight first\">
        <div class=\"head\">
            <h2 class=\"dark-icon i-profile\">";
        // line 19
        echo gettext("Manage profile");
        echo "</h2>
        </div>
        <ul class=\"tabs\">
            <li><a href=\"#tab-details\"><span class=\"dark-icon i-profile\"></span>";
        // line 22
        echo gettext("Details");
        echo "</a></li>
            <li><a href=\"#tab-password\"><span class=\"dark-icon i-logout\"></span>";
        // line 23
        echo gettext("Change Password");
        echo "</a></li>
            <li><a href=\"#tab-gravatar\"><span class=\"dark-icon i-uncheck\"></span>";
        // line 24
        echo gettext("Gravatar");
        echo "</a></li>
            <li><a href=\"#tab-currency\"><span class=\"dark-icon i-payment\"></span>";
        // line 25
        echo gettext("Currency");
        echo "</a></li>
            <li><a href=\"#tab-api\"><span class=\"dark-icon i-logout\"></span>";
        // line 26
        echo gettext("API");
        echo "</a></li>
        </ul>
        <div class=\"tabs_container\">

            <div class=\"tab_content\" id=\"tab-details\">
                <form method=\"post\" action=\"\" id=\"profile-update\">
                <div class=\"grid_6 alpha\">
                    <div class=\"box\">
                        <h2>";
        // line 34
        echo gettext("Update profile");
        echo "</h2>
                        <div class=\"block\">
                            <fieldset>
                                <p>
                                    <label>";
        // line 38
        echo gettext("Email Address");
        echo ": </label>
                                    <input type=\"email\" name=\"email\" value=\"";
        // line 39
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "email", [], "any", false, false, false, 39), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 42
        echo gettext("First Name");
        echo ": </label>
                                    <input type=\"text\" name=\"first_name\" value=\"";
        // line 43
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "first_name", [], "any", false, false, false, 43), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 46
        echo gettext("Last Name");
        echo ": </label>
                                    <input type=\"text\" name=\"last_name\" value=\"";
        // line 47
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "last_name", [], "any", false, false, false, 47), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 50
        echo gettext("Company Name");
        echo ": </label>
                                    <input type=\"text\" name=\"company\" value=\"";
        // line 51
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "company", [], "any", false, false, false, 51), "html", null, true);
        echo "\">
                                </p>
                                <p>
                                    <label>";
        // line 54
        echo gettext("Phone Country Code");
        echo ": </label>
                                    <input type=\"text\" name=\"phone_cc\" value=\"";
        // line 55
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "phone_cc", [], "any", false, false, false, 55), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 58
        echo gettext("Phone Number");
        echo ": </label>
                                    <input type=\"text\" name=\"phone\" value=\"";
        // line 59
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "phone", [], "any", false, false, false, 59), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <input class=\"bb-button bb-button-submit\" type=\"submit\" value=\"";
        // line 61
        echo gettext("Update profile");
        echo "\">
                            </fieldset>
                        </div>
                        </div>
                </div>
                <div class=\"grid_6 omega\">
                    <div class=\"box\">
                        <h2>&nbsp;</h2>
                        <div class=\"block\">
                            <fieldset>
                                <p>
                                    <label>";
        // line 72
        echo gettext("Address");
        echo ": </label>
                                    <input type=\"text\" name=\"address_1\" value=\"";
        // line 73
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "address_1", [], "any", false, false, false, 73), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 76
        echo gettext("Address 2");
        echo ": </label>
                                    <input type=\"text\" name=\"address_2\" value=\"";
        // line 77
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "address_2", [], "any", false, false, false, 77), "html", null, true);
        echo "\">
                                </p>
                                <p>
                                    <label>";
        // line 80
        echo gettext("City");
        echo ": </label>
                                    <input type=\"text\" name=\"city\" value=\"";
        // line 81
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "city", [], "any", false, false, false, 81), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 84
        echo gettext("Country");
        echo ": </label>
                                    ";
        // line 85
        echo twig_call_macro($macros["mf"], "macro_selectbox", ["country", twig_get_attribute($this->env, $this->source, ($context["guest"] ?? null), "system_countries", [], "any", false, false, false, 85), twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "country", [], "any", false, false, false, 85), 1, "Select country"], 85, $context, $this->getSourceContext());
        echo "
                                </p>
                                <p>
                                    <label>";
        // line 88
        echo gettext("State");
        echo ": </label>
                                     ";
        // line 90
        echo "                                     <input type=\"text\" name=\"state\" value=\"";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "state", [], "any", false, false, false, 90), "html", null, true);
        echo "\" />
                                </p>
                                <p>
                                    <label>";
        // line 93
        echo gettext("Zip/Postal Code");
        echo ": </label>
                                    <input type=\"text\" name=\"postcode\" value=\"";
        // line 94
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "postcode", [], "any", false, false, false, 94), "html", null, true);
        echo "\" required=\"required\">
                                </p>
                            </fieldset>
                        </div>
                    </div>
                </div>
                </form>
            </div>

            <div class=\"tab_content\" id=\"tab-password\">
                <div class=\"box\">
                    <h2>";
        // line 105
        echo gettext("Change password");
        echo "</h2>
                    <div class=\"block\">
                        <form method=\"post\" action=\"\" id=\"change-password\">
                            <fieldset>
                                <legend>";
        // line 109
        echo gettext("Enter new password");
        echo "</legend>
                                <p>
                                    <label>";
        // line 111
        echo gettext("Password");
        echo ": </label>
                                    <input type=\"password\" name=\"password\" value=\"\" required=\"required\">
                                </p>
                                <p>
                                    <label>";
        // line 115
        echo gettext("Password confirm");
        echo ": </label>
                                    <input type=\"password\" name=\"password_confirm\" value=\"\" required=\"required\">
                                </p>
                                <input class=\"bb-button bb-button-submit\" type=\"submit\" value=\"";
        // line 118
        echo gettext("Change password");
        echo "\">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            
            <div class=\"tab_content\" id=\"tab-api\">
                <div class=\"box\">
                    <h2>";
        // line 127
        echo gettext("API key");
        echo "</h2>
                    <p>";
        // line 128
        echo gettext("API key allows integration with external applications. You will need this key for authentication.");
        echo "</p>
                    <p>";
        // line 129
        echo gettext("Warning! Resetting the key will break existing applications using it.");
        echo "</p>
                    <div class=\"block\">
                        <form method=\"post\" action=\"\" id=\"change-api-key\">
                            <fieldset>
                                <p>
                                    <label>";
        // line 134
        echo gettext("Your API key");
        echo ": </label>
                                    <input type=\"text\" value=\"";
        // line 135
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["client"] ?? null), "client_api_key_get", [], "any", false, false, false, 135), "html", null, true);
        echo "\" id=\"api-key\">
                                </p>
                                <input class=\"bb-button bb-button-submit\" type=\"submit\" value=\"";
        // line 137
        echo gettext("Reset key");
        echo "\">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

            <div class=\"tab_content\" id=\"tab-gravatar\">
                <div class=\"box\">
                    <h2>";
        // line 146
        echo gettext("Gravatar");
        echo "</h2>
                    <div class=\"block\">
                        <img src=\"";
        // line 148
        echo twig_escape_filter($this->env, twig_gravatar_filter(twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "email", [], "any", false, false, false, 148)), "html", null, true);
        echo "\" alt=\"Gravatar\" style=\"float: left; padding: 1px; margin-right: 10px; border: 1px solid #d1d1d1;\"/>
                        <p>";
        // line 149
        echo gettext("Please register with");
        echo " <b>";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "email", [], "any", false, false, false, 149), "html", null, true);
        echo "</b> ";
        echo gettext("at ");
        echo "<a target=\"_blank\" href=\"http://gravatar.com\">Gravatar.com</a> ";
        echo gettext("to change your profile image. Gravatar image updates may not appear immediately.");
        echo "</p>
                        <div class=\"clear\"></div>
                    </div>
                </div>
            </div>

            <div class=\"tab_content\" id=\"tab-currency\">
                <div class=\"box\">
                    <h2>";
        // line 157
        echo gettext("Currency");
        echo "</h2>
                    <div class=\"block\">
                        ";
        // line 159
        if (twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "currency", [], "any", false, false, false, 159)) {
            // line 160
            echo "                            <p>";
            echo gettext("Your profile currency is");
            echo " <em>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["profile"] ?? null), "currency", [], "any", false, false, false, 160), "html", null, true);
            echo "</em></p>
                            <p>";
            // line 161
            echo gettext("Create new client profile if you want to manage your money in other currency");
            echo "</p>
                        ";
        } else {
            // line 163
            echo "                            <p>";
            echo gettext("Your profile currency will be defined after your first order. Once your currency is set, all your profile accounting will be managed in that currency and can not be changed.");
            echo "</p>
                        ";
        }
        // line 165
        echo "                    </div>
                </div>
            </div>

            <div class=\"clear\"></div>
        </div>
        </div>
    </div>
</div>

";
    }

    // line 177
    public function block_js($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 178
        echo "<script type=\"text/javascript\">
\$(function() {

    \$('#change-password').bind('submit',function(event){
        bb.post(
            'client/client/change_password',
            \$(this).serialize(),
            function(result) {
                bb.msg('Password was changed');
            }
        );
        return false;
    });
    
    \$('#change-api-key').bind('submit',function(event){
        bb.post(
            'client/client/api_key_reset',
            \$(this).serialize(),
            function(result) {
                \$('#api-key').val(result);
                bb.msg('API key was changed');
            }
        );
        return false;
    });

    \$('#profile-update').bind('submit',function(event){
        bb.post(
            'client/client/update',
            \$(this).serialize(),
            function(result) {
                bb.msg('Profile updated');
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
        return "mod_client_profile.phtml";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  408 => 178,  404 => 177,  390 => 165,  384 => 163,  379 => 161,  372 => 160,  370 => 159,  365 => 157,  348 => 149,  344 => 148,  339 => 146,  327 => 137,  322 => 135,  318 => 134,  310 => 129,  306 => 128,  302 => 127,  290 => 118,  284 => 115,  277 => 111,  272 => 109,  265 => 105,  251 => 94,  247 => 93,  240 => 90,  236 => 88,  230 => 85,  226 => 84,  220 => 81,  216 => 80,  210 => 77,  206 => 76,  200 => 73,  196 => 72,  182 => 61,  177 => 59,  173 => 58,  167 => 55,  163 => 54,  157 => 51,  153 => 50,  147 => 47,  143 => 46,  137 => 43,  133 => 42,  127 => 39,  123 => 38,  116 => 34,  105 => 26,  101 => 25,  97 => 24,  93 => 23,  89 => 22,  83 => 19,  75 => 14,  71 => 13,  65 => 9,  63 => 8,  61 => 7,  58 => 6,  54 => 5,  47 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "mod_client_profile.phtml", "/var/www/html/bb-themes/boxbilling/html/mod_client_profile.phtml");
    }
}
