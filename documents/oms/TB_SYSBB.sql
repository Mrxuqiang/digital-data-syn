/*
================================================================================
��ṹ����:TB_SYSBB
��ṹ����:��ṹ�ֶα�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSBB;
drop index AK_TB_SYSBB;
drop table TB_SYSBB;
create table TB_SYSBB  (
   SYSBB_ID             INTEGER                         not null,  /*���ֶ�ID         */
   SYSBB001             INTEGER                         not null,  /*��ṹID         */
   SYSBB002             VARCHAR2(30)                    not null,  /*�ֶ�����         */
   SYSBB003             VARCHAR2(30)                    not null,  /*�ֶ�˵��         */
   SYSBB004             VARCHAR2(20)                    not null,  /*�ֶ�����         */
   SYSBB005             NUMBER(5)                       not null,  /*����             */
   SYSBB006             NUMBER(5),                                 /*С��λ           */
   SYSBB007             VARCHAR2(1),                               /*������NULL       */
   SYSBB008             VARCHAR2(15),                              /*ȱʡֵ           */ 
   SYSBB009             VARCHAR2(30),                              /*�ֶ�˵��         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSBB primary key (SYSBB_ID)
);
create unique index AK_TB_SYSBB on TB_SYSBB (SYSBB001,SYSBB002);
create sequence SEQ_TB_SYSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBB to public;
grant index  on TB_SYSBB to public;
grant update on TB_SYSBB to public; 
grant delete on TB_SYSBB to public;  
grant insert on TB_SYSBB to public; 
grant select on SEQ_TB_SYSBB to public;   