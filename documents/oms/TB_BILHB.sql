/*
================================================================================
��ṹ����:TB_BILHB
��ṹ����:�������˵���/���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHB;
drop index AK_TB_BILHB;
drop table TB_BILHB;
create table TB_BILHB  (
   BILHB_ID           INTEGER                         not null,    /*���/�˻���ϸID    */        
   BILHB001           INTEGER                         not null,    /*���˵�ID           */        
   BILHB002           VARCHAR2(1)                     not null,    /*��������           */        
   BILHB003           INTEGER                         not null,    /*��Դ����ID         */        
   BILHB004           VARCHAR2(30)                    not null,    /*��Դ����           */        
   BILHB005           INTEGER                         not null,    /*���ʽ           */        
   BILHB006           DATE                            not null,    /*�������           */        
   BILHB007           NUMBER(12,2)                    not null,    /*���ݽ��           */        
   BILHB008           NUMBER(12,2)                    not null,    /*δ����           */        
   BILHB009           NUMBER(12,2)                    not null,    /*�ѽ���           */        
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILHB primary key (BILHB_ID)
);
create unique index AK_TB_BILHB on TB_BILHB (BILHB003);
create sequence SEQ_TB_BILHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHB to public;
grant index  on TB_BILHB to public;
grant update on TB_BILHB to public; 
grant delete on TB_BILHB to public;  
grant insert on TB_BILHB to public; 
grant select on SEQ_TB_BILHB to public;   