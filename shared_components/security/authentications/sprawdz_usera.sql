prompt --application/shared_components/security/authentications/sprawdz_usera
begin
--   Manifest
--     AUTHENTICATION: sprawdz_usera
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>27113392755738339338
,p_default_application_id=>235952
,p_default_id_offset=>35200867837419317706
,p_default_owner=>'WKSP_MATEUSZTEST1984'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(93905117310279960180)
,p_name=>'sprawdz_usera'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'sprawdz_usera'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sprawdz_usera (p_username in Varchar2, p_password in Varchar2) ',
'return boolean as',
'',
'    L_WYNIK NUMBER;',
'begin',
'',
'    SELECT COUNT(*)',
'    INTO L_WYNIK ',
'    FROM PRACOWNIK',
'    WHERE UPPER (LOGIN) = UPPER(p_username)',
'    AND UPPER(HASLO) = UPPER (p_password);',
'',
'',
'   if(L_WYNIK>0) then',
'        return true;',
'    else',
'         return false;',
'     end if;',
'',
'',
'',
'end;',
'',
'',
'',
'',
''))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
