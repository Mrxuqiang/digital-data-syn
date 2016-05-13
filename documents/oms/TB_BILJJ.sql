/*
================================================================================
��ṹ����:TB_BILJJ
��ṹ����:���ʶ��˵��ݹ���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJJ;
drop index AK_TB_BILJJ;
drop table TB_BILJJ;
create table TB_BILJJ  (
   BILJJ_ID          INTEGER                   not null,     /*����/��Ӫ���۵���������ϸID     */      
   BILJJ001          INTEGER                   not null,     /*���˵�ID                        */      
   BILJJ002          INTEGER                   not null,     /*�ݹ���ϸID                      */      
   BILJJ003          VARCHAR2(30)              not null,     /*�ݹ�����                        */      
   BILJJ004          INTEGER                   not null,     /*�ݹ�����ϸID                    */      
   BILJJ005          INTEGER                   not null,     /*��Դ����ID                      */      
   BILJJ006          INTEGER                   not null,     /*��ƷID                          */      
   BILJJ007          INTEGER                   not null,     /*��λ                            */      
   BILJJ008          NUMBER(18,3)              not null,     /*����                            */      
   BILJJ009          NUMBER(12,2)              not null,     /*���ҵ���                        */      
   BILJJ010          INTEGER                   not null,     /*˰��                            */      
   BILJJ011          NUMBER(12,2)              not null,     /*˰��                            */      
   BILJJ012          NUMBER(12,2)              not null,     /*����δ˰���                    */      
   BILJJ013          NUMBER(12,2)              not null,     /*����˰��                        */      
   BILJJ014          NUMBER(12,2)              not null,     /*���Һ�˰���                    */      
   BILJJ015          NUMBER(12,2)              not null,     /*���ҿ�Ʊ���                    */      
   BILJJ016          NUMBER(18,3)              not null,     /*��Ʊ����                        */ 
   BILJJ017          INTEGER                   not null,      /*��Դ������ϸID                 */
   CREATE_USER          VARCHAR2(12),                        /*������Ա               */
   USER_GROUP           VARCHAR2(12),                        /*������Ա����           */                               
   CREATE_DATE          DATE,                                /*��������               */
   MODIFIER             VARCHAR2(12),                        /*�޸���Ա               */
   MODI_DATE            DATE,                                /*�޸�����               */
   FLAG                 NUMBER(1),                           /*����״̬               */
   constraint PK_TB_BILJJ primary key (BILJJ_ID)
);
create unique index AK_TB_BILJJ on TB_BILJJ (BILJJ001,BILJJ002);
create sequence SEQ_TB_BILJJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJJ to public;
grant index  on TB_BILJJ to public;
grant update on TB_BILJJ to public; 
grant delete on TB_BILJJ to public;  
grant insert on TB_BILJJ to public; 
grant select on SEQ_TB_BILJJ to public;   