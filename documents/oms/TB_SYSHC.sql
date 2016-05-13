/*
================================================================================
��ṹ����:TB_SYSHC
��ṹ����:���ݷ���Ȩ�������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSHC;
drop index AK_TB_SYSHC;
drop table TB_SYSHC;
create table TB_SYSHC  (
   SYSHC_ID             INTEGER                          not null, /*����Ȩ����ID     */
   SYSHC001             INTEGER                          not null, /*����Ȩ����ID     */
   SYSHC002             VARCHAR2(2)                      not null, /*Ȩ������         */
   SYSHC003             CLOB                             not null, /*Ȩ������         */
   SYSHC004             CLOB,                                      /*Ȩ�������������� */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                 /*����״̬         */
   constraint PK_TB_SYSHC primary key (SYSHC_ID)
);
create sequence SEQ_TB_SYSHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHC to public;
grant index  on TB_SYSHC to public;
grant update on TB_SYSHC to public; 
grant delete on TB_SYSHC to public;  
grant insert on TB_SYSHC to public; 
grant select on SEQ_TB_SYSHC to public;   