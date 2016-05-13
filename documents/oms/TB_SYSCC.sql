/*
================================================================================
��ṹ����:TB_SYSCC
��ṹ����:���ó�ʽ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSCC;
drop index AK_TB_SYSCC;
drop table TB_SYSCC;
create table TB_SYSCC  (
   SYSCC_ID             INTEGER                         not null,  /*���ó�ʽID       */
   SYSCC001             INTEGER                         not null,  /*�û�ID           */
   SYSCC002             INTEGER                         not null,  /*�˵�ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSCC primary key (SYSCC_ID)
);
create unique index AK_TB_SYSCC on TB_SYSCC (SYSCC001,SYSCC002);
create sequence SEQ_TB_SYSCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCC to public;
grant index  on TB_SYSCC to public;
grant update on TB_SYSCC to public; 
grant delete on TB_SYSCC to public;  
grant insert on TB_SYSCC to public; 
grant select on SEQ_TB_SYSCC to public;   