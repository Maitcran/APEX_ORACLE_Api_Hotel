prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 235952
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>27113392755738339338
,p_default_application_id=>235952
,p_default_id_offset=>35200867837419317706
,p_default_owner=>'WKSP_MATEUSZTEST1984'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(93901203885449864429)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(93900968975245864325)
,p_default_dialog_template=>wwv_flow_imp.id(93900963735038864323)
,p_error_template=>wwv_flow_imp.id(93900953808965864318)
,p_printer_friendly_template=>wwv_flow_imp.id(93900968975245864325)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(93900953808965864318)
,p_default_button_template=>wwv_flow_imp.id(93901118915480864387)
,p_default_region_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_chart_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_form_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_reportr_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_tabform_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_wizard_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_menur_template=>wwv_flow_imp.id(93901058111985864360)
,p_default_listr_template=>wwv_flow_imp.id(93901045707550864355)
,p_default_irr_template=>wwv_flow_imp.id(93901035885925864351)
,p_default_report_template=>wwv_flow_imp.id(93901083916765864371)
,p_default_label_template=>wwv_flow_imp.id(93901116381034864385)
,p_default_menu_template=>wwv_flow_imp.id(93901120433593864387)
,p_default_calendar_template=>wwv_flow_imp.id(93901120597744864388)
,p_default_list_template=>wwv_flow_imp.id(93901100284078864378)
,p_default_nav_list_template=>wwv_flow_imp.id(93901112083472864383)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(93901112083472864383)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(93901106701047864381)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(93900981883609864330)
,p_default_dialogr_template=>wwv_flow_imp.id(93900979043109864329)
,p_default_option_label=>wwv_flow_imp.id(93901116381034864385)
,p_default_required_label=>wwv_flow_imp.id(93901117646439864386)
,p_default_navbar_list_template=>wwv_flow_imp.id(93901106265774864380)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
