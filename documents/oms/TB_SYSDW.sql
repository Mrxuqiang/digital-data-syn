/*
================================================================================
��ṹ����:TB_SYSDW
��ṹ����:�û�Ȩ�޿����б�
��ṹĿ��:ȫ�ֱ������û������Ŀ��̣������ж��������WMS��ʹ�ô����������Ƶ������ݵ���ʾ
================================================================================
*/

drop sequence SEQ_TB_SYSDW;
drop index AK_TB_SYSDW;
drop table TB_SYSDW;
create table TB_SYSDW  (
   SYSDW_ID             INTEGER                         not null,  /*�û�Ȩ�޿����б�ID */
   SYSDW001             INTEGER                         not null,  /*�û�Ȩ��ID��TB_SYSDD           */
   SYSDW002             INTEGER                         not null,  /*����ID��pubi048��TB_PUBGO         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                              
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDW primary key (SYSDW_ID)
);
create sequence SEQ_TB_SYSDW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDW to public;
grant index  on TB_SYSDW to public;
grant update on TB_SYSDW to public; 
grant delete on TB_SYSDW to public;  
grant insert on TB_SYSDW to public; 
grant select on SEQ_TB_SYSDW to public;   