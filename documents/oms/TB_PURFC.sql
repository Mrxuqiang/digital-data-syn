/*
================================================================================
��ṹ����:TB_PURFC
��ṹ����:�ɹ���ⵥ�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURFC;
drop index AK_TB_PURFC;
drop table TB_PURFC;
create table TB_PURFC  (
   PURFC_ID         	    INTEGER                  not null,              /*��������ϸID   */      
   PURFC001         	    INTEGER                  not null,              /*�����ϸID       */      
   PURFC002         	    INTEGER,                                        /*��ⵥID         */          
   PURFC003               INTEGER,                                        /*��Դ����         */
   PURFC004               INTEGER,                                        /*��Դ���ID       */
   PURFC005               INTEGER,                                        /*��Դ�����ϸID   */
   PURFC006		  INTEGER,                                        /*��Դ�ŵ�         */
   PURFC007               INTEGER                   not null,             /*��ƷID           */-- mark 20100330
   PURFC008               INTEGER,                                        /*ά��1            */-- mark 20100330
   PURFC009               INTEGER,                                        /*ά��2            */-- mark 20100330
   PURFC010               INTEGER,                                        /*ά��3            */-- mark 20100330
   PURFC011               INTEGER,                                        /*ά��4            */-- mark 20100330
   PURFC012               INTEGER,                                        /*ά��5            */-- mark 20100330
   PURFC013               NUMBER(18,3)              not null,             /*��������       */ 
   PURFC014               INTEGER                   not null,             /*�����ջ���ϸID   */ 	  
   PURFC015               NUMBER(18,3)              not null,             /*��Դ��������     */ 
   PURFC016               NUMBER(18,3)              not null,             /*��Դ����������� */ 
   PURFC017               VARCHAR2(12),                                   /*��ע             */ add bu hansf 20100619
   PURFC018               NUMBER(18,3)                      ,             /*������           */ add bu hansf 20101105
   PURFC019               VARCHAR2(1),                                    /*�Ƿ��׼�           */--1 �׼� 0 �Ӽ� 20111114 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*������Ա         */
   USER_GROUP             VARCHAR2(12),                                   /*������Ա����     */                              
   CREATE_DATE            DATE,                                           /*��������         */
   MODIFIER               VARCHAR2(12),                                   /*�޸���Ա         */
   MODI_DATE              DATE,                                           /*�޸�����         */
   FLAG                   NUMBER(1),                                      /*����״̬         */
   constraint PK_TB_PURFC primary key (PURFC_ID)
);
create unique index AK_TB_PURFC on TB_PURFC (PURFC003,PURFC004,PURFC005,PURFC006,PURFC007,PURFC008,PURFC009,PURFC010,PURFC011,PURFC012);
create sequence SEQ_TB_PURFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFC to public;
grant index  on TB_PURFC to public;
grant update on TB_PURFC to public; 
grant delete on TB_PURFC to public;  
grant insert on TB_PURFC to public; 
grant select on SEQ_TB_PURFC to public;   