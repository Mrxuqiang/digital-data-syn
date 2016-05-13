/*
================================================================================
��ṹ����:TB_PURHH
��ṹ����:�ڲ��������õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHH;
drop index AK_TB_PURHH;
drop table TB_PURHH;
create table TB_PURHH  (
   PURHH_ID          INTEGER                                not null,       /*��Ʒ��ϸID       */   
   PURHH001          INTEGER                                not null,       /*���õ�ID         */   
   PURHH002          INTEGER                                not null,       /*��Ʒ����         */   
   PURHH003          INTEGER,                                               /*ά��1            */   
   PURHH004          INTEGER,                                               /*ά��2            */   
   PURHH005          INTEGER,                                               /*ά��3            */   
   PURHH006          INTEGER,                                               /*ά��4            */   
   PURHH007          INTEGER,                                               /*ά��5            */  
   PURHH008          INTEGER,                                               /*��λ             */      
   PURHH009          INTEGER                                not null,       /*���õ�λ         */   
   PURHH010         NUMBER(18,3),                                          /*������           */   
   PURHH011          NUMBER(18,3)                           not null,    /*������           */  
   PURHH012          INTEGER                                        ,       /*����������ƷID   */   
   PURHH013          NUMBER(12,2),                                          /*˰ǰ����         */     
   PURHH014          NUMBER(12,2),                                          /*��˰����         */     
   PURHH015          INTEGER,                                               /*˰��             */     
   PURHH016          NUMBER(12,2),                                          /*˰��             */     
   PURHH017          NUMBER(12,2),                                          /*˰ǰ���         */       
   PURHH018          NUMBER(12,2),                                          /*��˰���         */       
   PURHH019          VARCHAR2(1)                            not null,       /*�������� */   
   PURHH020          VARCHAR2(255)                                 ,       /*����ԭ��        */   
   PURHH021          VARCHAR2(255),                                         /*��ע              */ 
   PURHH022          VARCHAR2(1)                            not null,       /*�Ƿ�ȡ���𻵼�*/
   PURHH023          NUMBER(12,2)                           not null,       /*�ۼ�             */ 
   PURHH024          VARCHAR2(30)                                           /*���׼������Ӧ��*/ 
   PURHH025          VARCHAR2(1)                                       ,       /*�Ƿ����� */
   PURHH026          VARCHAR2(1)                                       ,       /*�Ƿ�ɷ� */   
   PURHH027          INTEGER                                        ,       /*����ID*/   
   CREATE_USER       VARCHAR2(12),                                          /*������Ա         */
   USER_GROUP        VARCHAR2(12),                                          /*������Ա����     */                               
   CREATE_DATE       DATE,                                                  /*��������         */
   MODIFIER          VARCHAR2(12),                                          /*�޸���Ա         */
   MODI_DATE         DATE,                                                  /*�޸�����         */
   FLAG              NUMBER(1),                                             /*����״̬         */
   constraint PK_TB_PURHH primary key (PURHH_ID)
);
create sequence SEQ_TB_PURHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHH to public;
grant index  on TB_PURHH to public;
grant update on TB_PURHH to public; 
grant delete on TB_PURHH to public;  
grant insert on TB_PURHH to public; 
grant select on SEQ_TB_PURHH to public;   