/*
================================================================================
��ṹ����:TB_PRODK
��ṹ����:����֤���ŵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODK;
drop index AK_TB_PRODK;
drop table TB_PRODK;
create table TB_PRODK  (
   PRODK_ID             INTEGER                         not null,  /*����֤���ŵ��ӱ�ID  */
   PRODK001             INTEGER                         not null,  /*����֤���ŵ�ID      */
   PRODK002             VARCHAR2(30)                    not null,  /*ͨ��֤��            */
   PRODK003             VARCHAR2(30),  				   /*����                */
   PRODK004             VARCHAR2(30),				   /*���֤��            */
   PRODK005             VARCHAR2(1),                               /*�Ա�                */
   PRODK006             VARCHAR2(1), 				   /*���˻�              */
   PRODK007             VARCHAR2(100),				   /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODK primary key (PRODK_ID)
);
create unique index AK_TB_PRODK on TB_PRODK (PRODK001,PRODK002);
create sequence SEQ_TB_PRODK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODK to public;
grant index  on TB_PRODK to public;
grant update on TB_PRODK to public; 
grant delete on TB_PRODK to public;  
grant insert on TB_PRODK to public; 
grant select on SEQ_TB_PRODK to public;   

