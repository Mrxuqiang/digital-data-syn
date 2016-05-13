/*
================================================================================
��ṹ����:TB_SYSBA
��ṹ����:��ṹ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSBA;
drop index AK_TB_SYSBA;
drop table TB_SYSBA;
create table TB_SYSBA  (
   SYSBA_ID             INTEGER                         not null,  /*��ṹID         */
   SYSBA001             VARCHAR2(15)                    not null,  /*��ṹ����       */
   SYSBA002             VARCHAR2(30)                    not null,  /*��ṹ˵��       */
   SYSBA003             INTEGER                         not null,  /*ģ��ID           */
   SYSBA004             VARCHAR2(10)                    not null,  /*���ݿ���         */
   SYSBA005             VARCHAR2(1)                     not null,  /*������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSBA primary key (SYSBA_ID)
);
create unique index AK_TB_SYSBA on TB_SYSBA (SYSBA001);
create sequence SEQ_TB_SYSBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBA to public;
grant index  on TB_SYSBA to public;
grant update on TB_SYSBA to public; 
grant delete on TB_SYSBA to public;  
grant insert on TB_SYSBA to public; 
grant select on SEQ_TB_SYSBA to public;   