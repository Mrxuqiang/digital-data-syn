/*
================================================================================
��ṹ����:TB_BILJB
��ṹ����:����/��Ӫ���˵�����/�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJB;
drop index AK_TB_BILJB;
drop table TB_BILJB;
create table TB_BILJB  (
   BILJB_ID           INTEGER                         not null,    /*����/������ϸID    */        
   BILJB001           INTEGER                         not null,    /*���˵�ID           */                                                               
   BILJB002           VARCHAR2(1)                     not null,    /*��������           */                                                               
   BILJB003           INTEGER                         not null,    /*��Դ����ID         */                                                               
   BILJB004           VARCHAR2(30)                    not null,    /*��Դ����           */                                                               
   BILJB005           DATE                            not null,    /*�������           */                                                               
   BILJB006           NUMBER(12,2)                    not null,    /*���ݽ��           */        
   BILJB007           NUMBER(12,2)                    not null,    /*δ����           */        
   BILJB008           NUMBER(12,2)                    not null,    /*�ѽ���           */        
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILJB primary key (BILJB_ID)
);
create unique index AK_TB_BILJB on TB_BILJB (BILJB003);
create sequence SEQ_TB_BILJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJB to public;
grant index  on TB_BILJB to public;
grant update on TB_BILJB to public; 
grant delete on TB_BILJB to public;  
grant insert on TB_BILJB to public; 
grant select on SEQ_TB_BILJB to public;   