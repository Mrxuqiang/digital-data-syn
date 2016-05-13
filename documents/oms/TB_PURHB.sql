/*
================================================================================
��ṹ����:TB_PURHB
��ṹ����:�������뵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHB;
drop index AK_TB_PURHB;
drop table TB_PURHB;
create table TB_PURHB  (
   PURHB_ID          INTEGER                                not null,       /*��Ʒ��ϸID       */   
   PURHB001          INTEGER                                not null,       /*���뵥ID         */   
   PURHB002          INTEGER                                not null,       /*��Ʒ����         */   
   PURHB003          INTEGER,                                               /*ά��1            */   
   PURHB004          INTEGER,                                               /*ά��2            */   
   PURHB005          INTEGER,                                               /*ά��3            */   
   PURHB006          INTEGER,                                               /*ά��4            */   
   PURHB007          INTEGER,                                               /*ά��5            */   
   PURHB008          INTEGER                                not null,       /*���뵥λ         */   
   PURHB009          NUMBER(18,3)                           not null,       /*������           */   
   PURHB010          NUMBER(18,3),                                          /*�ɹ���           */  
   PURHB011          INTEGER                                not null,       /*��Ӧ��           */   
   PURHB012          VARCHAR2(1)                            not null,       /*��Ӫ��ʽ         */   
   PURHB013          VARCHAR2(1)                            not null,       /*���䷽ʽ         */   
   PURHB014          VARCHAR2(1)                            not null,       /*��Ʒ��������     */   
   PURHB015          INTEGER                                not null,       /*����ԭ��         */   
   PURHB016          DATE,                                                  /*Ԥ������         */   
   PURHB017          NUMBER(12,2)                           not null,       /*��λ������       */   
   PURHB018          VARCHAR2(255),                                         /*��ע             */ 
   PURHB019          VARCHAR2(1)                            not null,       /*������           */
   PURHB020          INTEGER                                not null,       /*����������ƷID   */ 
   PURHB021          NUMBER(12,2)                                           /*Ҫ����           */ 
   PURHB022          NUMBER(12,2)                                           /*˰ǰ����         */   
   PURHB023          NUMBER(12,2)                                           /*��˰����         */   
   PURHB024          INTEGER                                                /*˰��             */   
   PURHB025          NUMBER(12,2)                                           /*˰��             */   
   PURHB026          NUMBER(12,2)                                           /*˰ǰ���         */   
   PURHB027          NUMBER(12,2)                                           /*��˰���         */                        
   CREATE_USER       VARCHAR2(12),                                          /*������Ա         */
   USER_GROUP        VARCHAR2(12),                                          /*������Ա����     */                               
   CREATE_DATE       DATE,                                                  /*��������         */
   MODIFIER          VARCHAR2(12),                                          /*�޸���Ա         */
   MODI_DATE         DATE,                                                  /*�޸�����         */
   FLAG              NUMBER(1),                                             /*����״̬         */
   constraint PK_TB_PURHB primary key (PURHB_ID)
);
create unique index AK_TB_PURHB on TB_PURHB (PURHB_ID,PURHB001,PURHB004);
create sequence SEQ_TB_PURHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHB to public;
grant index  on TB_PURHB to public;
grant update on TB_PURHB to public; 
grant delete on TB_PURHB to public;  
grant insert on TB_PURHB to public; 
grant select on SEQ_TB_PURHB to public;   