/*
================================================================================
��ṹ����:TB_PURDC
��ṹ����:�ɹ����������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURDC;
drop index AK_TB_PURDC;
drop table TB_PURDC;
create table TB_PURDC  (
   PURDC_ID               INTEGER                   not null,             /*�ӱ���ϸID       */
   PURDC001               INTEGER                   not null,             /*�ɹ���ϸ��ID     */
   PURDC002               INTEGER                   not null,             /*�ɹ���������ID   */	
   PURDC003               INTEGER,                                        /*��������         */
   PURDC004               INTEGER,                                        /*��Դ����ID       */
   PURDC005               INTEGER,                                        /*��Դ������ϸID   */
   PURDC006		  INTEGER,                                        /*��ԴӪ����֯     */
   PURDC007               INTEGER                   not null,             /*��ƷID           */
   PURDC008               INTEGER,                                        /*ά��1            */
   PURDC009               INTEGER,                                        /*ά��2            */
   PURDC010               INTEGER,                                        /*ά��3            */
   PURDC011               INTEGER,                                        /*ά��4            */
   PURDC012               INTEGER,                                        /*ά��5            */
   PURDC013               NUMBER(18,3)              not null,             /*��������         */
   PURDC014               NUMBER(18,3)  , 				  /*���ջ���         */	
   PURDC015               NUMBER(18,3)  , 				  /*�Ѿ���������     */	
   PURDC016               NUMBER(18,3)  , 				  /*��Դ������       */
   PURDC017               DATE,   				  	  /*����������       */
   PURDC018               VARCHAR2(30),                                   /*��Դ����         */
   PURDC019               VARCHAR2(255),                                  /*��ע             */ add by hansf 20100619
   PURDC020               INTEGER,                                        /*Ҫ������ϸID     */
   PURDC021               NUMBER(18,3)                      , 		  /*������           */--20110217 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*������Ա         */
   USER_GROUP             VARCHAR2(12),                                   /*������Ա����     */                               
   CREATE_DATE            DATE,                                           /*��������         */
   MODIFIER               VARCHAR2(12),                                   /*�޸���Ա         */
   MODI_DATE              DATE,                                           /*�޸�����         */
   FLAG                   NUMBER(1),                                      /*����״̬         */
   constraint PK_TB_PURDC primary key (PURDC_ID)
);
create unique index AK_TB_PURDC on TB_PURDC (PURDC_ID,PURDC001,PURDC004);
create sequence SEQ_TB_PURDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDC to public;
grant index  on TB_PURDC to public;
grant update on TB_PURDC to public; 
grant delete on TB_PURDC to public;  
grant insert on TB_PURDC to public; 
grant select on SEQ_TB_PURDC to public;   