prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>27113392755738339338
,p_default_application_id=>235952
,p_default_id_offset=>35200867837419317706
,p_default_owner=>'WKSP_MATEUSZTEST1984'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'HOTEL'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#zawartosc{',
'    width: 50%;',
'    margin-left: 25%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'PIOTREK.LIZAK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230627165924'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93901238122687864450)
,p_plug_name=>'HOTEL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(93901012361678864342)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95232049392870548716)
,p_plug_name=>unistr('Zawaro\015B\0107')
,p_region_name=>'zawartosc'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(93901045707550864355)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>unistr('Witaj &P1_DANE_PRACOWNIKA. w aplikacji obs\0142uguj\0105cej nasz hotel!')
,p_landmark_type=>'region'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95232049560659548718)
,p_name=>'P1_DANE_PRACOWNIKA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(93901238122687864450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232049459891548717)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pobierz_dane_pracownika'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.imie || '' '' || p.nazwisko dane_pracownika',
'  INTO :P1_DANE_PRACOWNIKA',
'  FROM pracownik p',
' WHERE UPPER(p.login) = UPPER(:APP_USER);'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>60031181622472231011
);
wwv_flow_imp.component_end;
end;
/
