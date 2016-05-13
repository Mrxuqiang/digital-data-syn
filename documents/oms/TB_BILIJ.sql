/*
================================================================================
��ṹ����:TB_BILIJ
��ṹ����:�ɱ��������˵��ݹ���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIJ;
drop index AK_TB_BILIJ;
drop table TB_BILIJ;
create table TB_BILIJ  (
   BILIJ_ID          INTEGER                   not null,     /*�ɱ��������۵���������ϸID     */      
   BILIJ001          INTEGER                   not null,     /*���˵�ID                        */      
   BILIJ002          INTEGER                   not null,     /*�ݹ���ϸID                      */      
   BILIJ003          VARCHAR2(30)              not null,     /*�ݹ�����                        */      
   BILIJ004          INTEGER                   not null,     /*�ݹ�����ϸID                    */      
   BILIJ005          INTEGER                   not null,     /*��Դ����ID                      */      
   BILIJ006          INTEGER                   not null,     /*��ƷID                          */      
   BILIJ007          INTEGER                   not null,     /*��λ                            */      
   BILIJ008          NUMBER(18,3)              not null,     /*����                            */      
   BILIJ009          NUMBER(12,2)              not null,     /*���ҵ���                        */      
   BILIJ010          INTEGER                   not null,     /*˰��                            */      
   BILIJ011          NUMBER(12,2)              not null,     /*˰��                            */      
   BILIJ012          NUMBER(12,2)              not null,     /*����δ˰���                    */      
   BILIJ013          NUMBER(12,2)              not null,     /*����˰��                        */      
   BILIJ014          NUMBER(12,2)              not null,     /*���Һ�˰���                    */      
   BILIJ015          NUMBER(12,2)              not null,     /*���ҿ�Ʊ���                    */      
   BILIJ016          NUMBER(18,3)              not null,     /*��Ʊ����                        */ 
   BILIJ017          INTEGER                   not null,      /*��Դ������ϸID                 */
   CREATE_USER          VARCHAR2(12),                        /*������Ա               */
   USER_GROUP           VARCHAR2(12),                        /*������Ա����           */                               
   CREATE_DATE          DATE,                                /*��������               */
   MODIFIER             VARCHAR2(12),                        /*�޸���Ա               */
   MODI_DATE            DATE,                                /*�޸�����               */
   FLAG                 NUMBER(1),                           /*����״̬               */
   constraint PK_TB_BILIJ primary key (BILIJ_ID)
);
create unique index AK_TB_BILIJ on TB_BILIJ (BILIJ001,BILIJ002);
create sequence SEQ_TB_BILIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIJ to public;
grant index  on TB_BILIJ to public;
grant update on TB_BILIJ to public; 
grant delete on TB_BILIJ to public;  
grant insert on TB_BILIJ to public; 
grant select on SEQ_TB_BILIJ to public;   