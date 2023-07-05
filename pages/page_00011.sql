prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Typy pokoi edycja'
,p_alias=>'TYPY-POKOI-EDYCJA'
,p_page_mode=>'MODAL'
,p_step_title=>'Typy pokoi edycja'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'PIOTREK.LIZAK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230704093244'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95232050087660548723)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(93901045707550864355)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95232051474470548737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95232050087660548723)
,p_button_name=>'AKTUALIZUJ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(93901118915480864387)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aktualizuj'
,p_button_position=>'CHANGE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95232050382685548726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(95232050087660548723)
,p_button_name=>'ZAPISZ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(93901118915480864387)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz'
,p_button_position=>'CHANGE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95232051612707548738)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95232050087660548723)
,p_button_name=>'USUN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(93901118915480864387)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'CLOSE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95232050232000548724)
,p_name=>'P11_NAZWA_TYPU_POKOJU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95232050087660548723)
,p_prompt=>'Nazwa typu pokoju'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(93901116447581864385)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95232051026652548732)
,p_name=>'P11_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95232050087660548723)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P11_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232050463819548727)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Zapis danych'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P11_NAZWA_TYPU_POKOJU IS NULL THEN',
unistr('    raise_application_error(-20000, ''To pole musi posiada\0107 warto\015B\0107!'');'),
'END IF;',
'',
'INSERT INTO TYPY_POKOI (NAZWA_TYPU_POKOJU) VALUES (:P11_NAZWA_TYPU_POKOJU);',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(95232050382685548726)
,p_internal_uid=>60031182626400231021
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232051434644548736)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Aktualizacja danych'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P11_NAZWA_TYPU_POKOJU IS NULL THEN',
unistr('    raise_application_error(-20000, ''To pole musi posiada\0107 warto\015B\0107!'');'),
'END IF;',
'',
'UPDATE TYPY_POKOI',
'   SET NAZWA_TYPU_POKOJU = :P11_NAZWA_TYPU_POKOJU',
' WHERE id_typu_pokoju = :P11_ID;',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(95232051474470548737)
,p_internal_uid=>60031183597225231030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232051692546548739)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Usuwanie dane'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM TYPY_POKOI',
'WHERE id_typu_pokoju = :P11_ID;',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(95232051612707548738)
,p_internal_uid=>60031183855127231033
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232050630223548728)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Zamknij okienko modalne'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>60031182792804231022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95232051141446548734)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'wyszukaj dane'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nazwa_typu_pokoju',
'  INTO :P11_NAZWA_TYPU_POKOJU',
'  FROM TYPY_POKOI',
' WHERE id_typu_pokoju = :P11_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P11_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>60031183304027231028
);
wwv_flow_imp.component_end;
end;
/
