/*
================================================================================
��ṹ����:TB_INVNE
��ṹ����:�ؿⵥ������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVNE;
drop index AK_TB_INVNE;
drop table TB_INVNE;
create table TB_INVNE  (
   INVNE_ID             INTEGER                         not null,  /*������ϸID          */
   INVNE001		INTEGER				not null,  /*�Ӽ���ϸID          */
   INVNE002             VARCHAR2(30)                    not null,  /*����                */
   INVNE003             number(18,3)                    not null,  /*�ؿ�����            */
   INVNE004             INTEGER                         not null,  /*��λID              */
   INVNE005             INTEGER                                    /*�ؿⵥID            */
   INVNE006		number(18,3)			not null,  /*��������*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_INVNE primary key (INVNE_ID)
);
create unique index AK_TB_INVNE on TB_INVNE (INVNE001);

create sequence SEQ_TB_INVNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNE to public;
grant index  on TB_INVNE to public;
grant update on TB_INVNE to public; 
grant delete on TB_INVNE to public;  
grant insert on TB_INVNE to public; 
grant select on SEQ_TB_INVNE to public;   
