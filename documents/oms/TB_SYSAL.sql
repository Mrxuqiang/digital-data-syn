/*
================================================================================
��ṹ����:TB_SYSAL
��ṹ����:��ʽ��ǰ�汾��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAL;
drop index AK_TB_SYSAL;
drop table TB_SYSAL;
create table TB_SYSAL  (
   SYSAL_ID             INTEGER                         not null,  /*��ʽ�汾ID       */
   SYSAL001             VARCHAR2(60)                    not null,  /*��ʽ����         */
   SYSAL002             VARCHAR2(15)                    not null,  /*�汾��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAL primary key (SYSAL_ID)
);
create unique index AK_TB_SYSAL on TB_SYSAL (SYSAL001);
create sequence SEQ_TB_SYSAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAL to public;
grant index  on TB_SYSAL to public;
grant update on TB_SYSAL to public; 
grant delete on TB_SYSAL to public;  
grant insert on TB_SYSAL to public; 
grant select on SEQ_TB_SYSAL to public;   