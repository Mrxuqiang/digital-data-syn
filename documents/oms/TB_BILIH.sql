/*
================================================================================
��ṹ����:TB_BILIH
��ṹ����:�ɱ��������˵������ݹ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIH;
drop index AK_TB_BILIH;
drop table TB_BILIH;
create table TB_BILIH  (
   BILIH_ID	          INTEGER                         not null,    /*�����ݹ�ID           */                                                                             
   BILIH001	          INTEGER                         not null,    /*���˵�ID             */                                                                           
   BILIH002	          INTEGER                         not null,    /*��Դ����ID           */                                                                              
   BILIH003	          INTEGER                         not null,    /*��ƷID               */                                                                              
   BILIH004	          NUMBER(12,2)                    not null,    /*δ˰����/�˶�        */                                                                              
   BILIH005	          NUMBER(12,2)                    not null,    /*��˰����/�˶�        */                                                                              
   BILIH006	          NUMBER(12,2)                    not null,    /*δ˰�ѽ���         */                                                                              
   BILIH007	          NUMBER(12,2)                    not null,    /*��˰�ѽ���         */                                                                           
   BILIH008	          INTEGER                         not null,    /*�ݹ�����ID           */                                                                              
   BILIH009	          NUMBER(12,2)                    not null,    /*δ˰�����ݹ����     */                                                                              
   BILIH010	          NUMBER(12,2)                    not null,    /*��˰�����ݹ����     */                                                                              
   BILIH011	          NUMBER(12,2)                    not null,    /*δ˰�������         */                                                                              
   BILIH012	          NUMBER(12,2)                    not null,    /*��˰�������         */                                                                              
   BILIH013	          NUMBER(12,2)                    not null,    /*����˰��             */                                                                              
   BILIH014	          INTEGER                                      /*�����ݹ�����         */                                                                              
   BILIH015	          INTEGER                                      /*Ӧ������             */                                                                              
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILIH primary key (BILIH_ID)
);
create unique index AK_TB_BILIH on TB_BILIH (BILIH_ID);
create sequence SEQ_TB_BILIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIH to public;
grant index  on TB_BILIH to public;
grant update on TB_BILIH to public; 
grant delete on TB_BILIH to public;  
grant insert on TB_BILIH to public; 
grant select on SEQ_TB_BILIH to public;   