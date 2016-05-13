/*
================================================================================
��ṹ����:TB_PURHF
��ṹ����:�ͻ��������õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHF;
drop index AK_TB_PURHF;
drop table TB_PURHF;
create table TB_PURHF  (
   PURHF_ID          INTEGER                                not null,       /*��Ʒ��ϸID       */   
   PURHF001          INTEGER                                not null,       /*���õ�ID         */   
   PURHF002          INTEGER                                not null,       /*��Ʒ����         */   
   PURHF003          INTEGER,                                               /*ά��1            */   
   PURHF004          INTEGER,                                               /*ά��2            */   
   PURHF005          INTEGER,                                               /*ά��3            */   
   PURHF006          INTEGER,                                               /*ά��4            */   
   PURHF007          INTEGER,                                               /*ά��5            */ 
   PURHF008          INTEGER,                                               /*�ֿ�             */    
   PURHF009          INTEGER,                                               /*��λ             */      
   PURHF010          INTEGER                                not null,       /*���õ�λ         */   
   PURHF011          NUMBER(18,3),                                          /*������           */   
   PURHF012          NUMBER(18,3)                           not null,       /*������           */  
   PURHF013          INTEGER                                not null,       /*����������ƷID   */   
   PURHF014          VARCHAR2(1)                            not null,       /*��Ʒ��������     */   
   PURHF015          INTEGER                                not null,       /*����ԭ��         */   
   PURHF016          NUMBER(12,2)                           not null,       /*��λ������       */   
   PURHF017          VARCHAR2(255),                                         /*��ע             */ 
   PURHF018          VARCHAR2(1)                            not null,       /*�Ƿ�ȡ���𻵼�   */
   PURHF019          VARCHAR2(1)                            not null,       /*״̬��           */
   PURHF020          NUMBER(12,2)                           not null,       /*�ۼ�             */ 
   PURHF021          NUMBER(12,2)                           not null,       /*���             */       
   PURHF022          VARCHAR2(30),                                          /*������           */ 
   PURHF023          VARCHAR2(1)                            not null,       /*�տʽ         */       
   PURHF024          NUMBER(12,2)                           not null,       /*�տ���         */       
   PURHF025          INTEGER,                                               /*��������ID       */       
   PURHF026          NUMBER(12,2),                                          /*�������         */ 
   PURHF027          INTEGER,                                               /*���뵥��ϸID     */
   CREATE_USER       VARCHAR2(12),                                          /*������Ա         */
   USER_GROUP        VARCHAR2(12),                                          /*������Ա����     */                               
   CREATE_DATE       DATE,                                                  /*��������         */
   MODIFIER          VARCHAR2(12),                                          /*�޸���Ա         */
   MODI_DATE         DATE,                                                  /*�޸�����         */
   FLAG              NUMBER(1),                                             /*����״̬         */
   constraint PK_TB_PURHF primary key (PURHF_ID)
);
create unique index AK_TB_PURHF on TB_PURHF (PURHF_ID,PURHF002);
create sequence SEQ_TB_PURHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHF to public;
grant index  on TB_PURHF to public;
grant update on TB_PURHF to public; 
grant delete on TB_PURHF to public;  
grant insert on TB_PURHF to public; 
grant select on SEQ_TB_PURHF to public;   