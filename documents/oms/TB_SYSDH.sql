/*
================================================================================
��ṹ����:TB_SYSDH
��ṹ����:��ѡ�������ֶα�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDH;
drop index AK_TB_SYSDH;
drop table TB_SYSDH;
create table TB_SYSDH  (
   SYSDH_ID             INTEGER                         not null,  /*��¼ID           */
   SYSDH001             INTEGER                         not null,  /*����ID           */
   SYSDH002             VARCHAR2(30)                    not null,  /*����             */
   SYSDH003             VARCHAR2(30)                    not null,  /*�ֶ���           */
   SYSDH004							VARCHAR2(1)											not null,  /*����,1:�����ֶ�;2:������¼���ֶ�;3:ͬʱѡ����������*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDH primary key (SYSDH_ID)
);
create unique index AK_TB_SYSDH on TB_SYSDH (SYSDH001,SYSDH002);
create sequence SEQ_TB_SYSDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDH to public;
grant index  on TB_SYSDH to public;
grant update on TB_SYSDH to public; 
grant delete on TB_SYSDH to public;  
grant insert on TB_SYSDH to public; 
grant select on SEQ_TB_SYSDH to public;   