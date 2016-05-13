/*
================================================================================
��ṹ����:TB_PRCAC
��ṹ����:�۸���Ի�Ա�۱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCAC;
drop index AK_TB_PRCAC;
drop table TB_PRCAC;
create table TB_PRCAC  (
   PRCAC_ID             INTEGER                         not null,  /*�۸���Ի�Ա��ID  */
   PRCAC001             INTEGER                         not null,  /*�۸����ID        */
   PRCAC002             INTEGER                         not null,  /*�۸���Ա�׼�ۼ�ID*/
   PRCAC003             INTEGER                         not null,  /*��Ա�ȼ�ID        */
   PRCAC004             NUMBER(12,2)                    not null,  /*��Ա��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCAC primary key (PRCAC_ID)
);
create unique index AK_TB_PRCAC on TB_PRCAC (PRCAC001,PRCAC002,PRCAC003);
create sequence SEQ_TB_PRCAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAC to public;
grant index  on TB_PRCAC to public;
grant update on TB_PRCAC to public; 
grant delete on TB_PRCAC to public;  
grant insert on TB_PRCAC to public; 
grant select on SEQ_TB_PRCAC to public;   