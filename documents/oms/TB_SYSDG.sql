/*
================================================================================
��ṹ����:TB_SYSDG
��ṹ����:��ɫ�����ӽ�ɫ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDG;
drop index AK_TB_SYSDG;
drop table TB_SYSDG;
create table TB_SYSDG  (
   SYSDG_ID             INTEGER                         not null,  /*����ID           */
   SYSDG001             INTEGER                         not null,  /*��ɫID           */
   SYSDG002             INTEGER                         not null,  /*������ɫID       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDG primary key (SYSDG_ID)
);
create unique index AK_TB_SYSDG on TB_SYSDG (SYSDG001,SYSDG002);
create sequence SEQ_TB_SYSDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDG to public;
grant index  on TB_SYSDG to public;
grant update on TB_SYSDG to public; 
grant delete on TB_SYSDG to public;  
grant insert on TB_SYSDG to public; 
grant select on SEQ_TB_SYSDG to public;   