/*
================================================================================
��ṹ����:TB_PRCBC
��ṹ����:�ۼ۵�����Ա���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCBC;
drop index AK_TB_PRCBC;
drop table TB_PRCBC;
create table TB_PRCBC  (
   PRCBC_ID             INTEGER                         not null,  /*�ۼ۵�����Ա��ID  */
   PRCBC001             INTEGER                         not null,  /*�ۼ۵�����ͷID    */
   PRCBC002             INTEGER                         not null,  /*�ۼ۵�����׼�ۼ�ID*/
   PRCBC003             INTEGER                         not null,  /*��Ա�ȼ�ID        */
   PRCBC004             VARCHAR(1)                      not null,  /*�ο���׼          */
   PRCBC005             NUMBER(12,2)                    not null,  /*�ο���            */
   PRCBC006             NUMBER(5,3)                     not null,  /*��������          */
   PRCBC007             NUMBER(12,2)                    not null,  /*��Ա��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCBC primary key (PRCBC_ID)
);
create unique index AK_TB_PRCBC on TB_PRCBC (PRCBC001,PRCBC002,PRCBC003);
create sequence SEQ_TB_PRCBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBC to public;
grant index  on TB_PRCBC to public;
grant update on TB_PRCBC to public; 
grant delete on TB_PRCBC to public;  
grant insert on TB_PRCBC to public; 
grant select on SEQ_TB_PRCBC to public;   