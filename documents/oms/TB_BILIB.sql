/*
================================================================================
��ṹ����:TB_BILIB
��ṹ����:�ɱ��������˵�����/�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIB;
drop index AK_TB_BILIB;
drop table TB_BILIB;
create table TB_BILIB  (
   BILIB_ID           INTEGER                         not null,    /*����/������ϸID    */        
   BILIB001           INTEGER                         not null,    /*���˵�ID           */        
   BILIB002           VARCHAR2(1)                     not null,    /*��������           */        
   BILIB003           INTEGER                         not null,    /*��Դ����ID         */        
   BILIB004           VARCHAR2(30)                    not null,    /*��Դ����           */              
   BILIB005           DATE                            not null,    /*�������           */        
   BILIB006           NUMBER(12,2)                    not null,    /*���ݽ��           */        
   BILIB007           NUMBER(12,2)                    not null,    /*δ����           */        
   BILIB008           NUMBER(12,2)                    not null,    /*�ѽ���           */        
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILIB primary key (BILIB_ID)
);
create unique index AK_TB_BILIB on TB_BILIB (BILIB003);
create sequence SEQ_TB_BILIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIB to public;
grant index  on TB_BILIB to public;
grant update on TB_BILIB to public; 
grant delete on TB_BILIB to public;  
grant insert on TB_BILIB to public; 
grant select on SEQ_TB_BILIB to public;   