/*
================================================================================
��ṹ����:TB_BILII
��ṹ����:�ɱ��������˵��ݹ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIH;
drop index AK_TB_BILIH;
drop table TB_BILIH;
create table TB_BILIH  (
   BILII_ID	          INTEGER                    not null,     /*�ݹ�������ϸID   */                                                                                   
   BILII001	          INTEGER                    not null,     /*���˵�ID         */                                                                                   
   BILII002	          INTEGER                    not null,     /*�ݹ�����ID       */                                                                                                                                        
   BILII003	          DATE                       not null,     /*�ݹ�����         */                                                                                   
   BILII004	          VARCHAR2(30)               not null,     /*�ݹ�����         */                                                                                   
   BILII005	          NUMBER(12,2)               not null,     /*δ˰�ݹ����      */                                                                                  
   BILII006	          NUMBER(12,2)               not null,     /*��˰�ݹ����     */                                                                                   
   BILII007	          NUMBER(12,2)               not null,     /*��ʽӦ������     */                                                                                   
   CREATE_USER          VARCHAR2(12),                          /*������Ա            */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����        */                               
   CREATE_DATE          DATE,                                  /*��������            */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա            */
   MODI_DATE            DATE,                                  /*�޸�����            */
   FLAG                 NUMBER(1),                             /*����״̬            */
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