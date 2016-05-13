/*
================================================================================
��ṹ����:TB_BILJH
��ṹ����:����/��Ӫ���˵��ݹ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJH;
drop index AK_TB_BILJH;
drop table TB_BILJH;
create table TB_BILJH  (
   BILJI_ID	          INTEGER                    not null,     /*�ݹ�������ϸID   */                                                                                   
   BILJI001	          INTEGER                    not null,     /*���˵�ID         */                                                                                   
   BILJI002	          INTEGER                    not null,     /*�ݹ�����ID       */                                                                                                                                        
   BILJI003	          DATE                       not null,     /*�ݹ�����         */                                                                                   
   BILJI004	          VARCHAR2(30)               not null,     /*�ݹ�����         */                                                                                   
   BILJI005	          NUMBER(12,2)               not null,     /*δ˰�ݹ����      */                                                                                  
   BILJI006	          NUMBER(12,2)               not null,     /*��˰�ݹ����     */                                                                                   
   BILJI007	          NUMBER(12,2)               not null,     /*��ʽӦ������     */                                                                                   
   CREATE_USER          VARCHAR2(12),                          /*������Ա            */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����        */                               
   CREATE_DATE          DATE,                                  /*��������            */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա            */
   MODI_DATE            DATE,                                  /*�޸�����            */
   FLAG                 NUMBER(1),                             /*����״̬            */
   constraint PK_TB_BILJH primary key (BILJH_ID)
);
create unique index AK_TB_BILJH on TB_BILJH (BILJH_ID);
create sequence SEQ_TB_BILJH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJH to public;
grant index  on TB_BILJH to public;
grant update on TB_BILJH to public; 
grant delete on TB_BILJH to public;  
grant insert on TB_BILJH to public; 
grant select on SEQ_TB_BILJH to public;   