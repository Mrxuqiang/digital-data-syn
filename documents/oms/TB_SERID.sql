/*
================================================================================
��ṹ����:TB_SERID
��ṹ����:�̼����ֱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERID;
drop index AK_TB_SERID;
drop table TB_SERID;
create table TB_SERID  (                                       
   SERID_ID           INTEGER                 not null,            /*���������ID     */   
   SERID001           INTEGER                 not null,            /*���������ID     */   
   SERID002           DATE ,                                       /*��������           */   
   SERID003           INTEGER,                                     /*������Ա           */   
   SERID004           VARCHAR2(30) ,                               /*��ϵ��ʽ           */   
   SERID005           VARCHAR2(1),                                 /*�Ƿ����           */   
   SERID006           VARCHAR2(30),                                /*�̻��Խ���         */ 
   SERID007           VARCHAR2(30),                                /*��������           */
   SERID008           VARCHAR2(60),                                /*��Ʒ���/�ͺ�      */
   SERID009           VARCHAR2(60),                                /*��Ʒ����           */
   SERID010           VARCHAR2(1),                                 /*ʵ�ʼ����Ŀ       */
   SERID011           VARCHAR2(60),                                /*�ͼ����           */
   SERID012           VARCHAR2(1),                                 /*�ؼ���Ŀ�Ƿ�ϸ�   */
   SERID013           NUMBER(22,2),                                /*������           */
   SERID014           NUMBER(22,2),                                /*���Ʒ����         */
   SERID015           VARCHAR2(1),                                 /*�����           */
   SERID016           VARCHAR2(80),                                /*�����ʩ           */
   SERID017           VARCHAR2(255),                               /*��ע               */
   SERID018           INTEGER,                                     /*Ʒ��ID             */
   SERID019           VARCHAR2(1),                                 /*������ 1.��ȩ 2.�ؽ��� 3.������ */ --20141011 add by sundan
   SERID020           VARCHAR2(30),                                /*ָ��             */ --20141011 add by sundan
   SERID021           VARCHAR2(30),                                /*��׼Ҫ�󣨺���λ��             */ --20141011 add by sundan
   SERID022           INTEGER,					   /*�����ֵ             */ --20141011 add by sundan
   SERID023           VARCHAR2(1),			           /*�ƻ������Ŀ         */ --20141204 add by sundan
   SERID024           INTEGER,					   /*�̻�id             */ --20141204 add by sundan
   SERID025           INTEGER,					   /*¥��id             */ --20141204 add by sundan
   SERID026           INTEGER,					   /*¥��id             */ --20141204 add by sundan
   SERID027           INTEGER,					   /*չλid             */ --20141204 add by sundan
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERID primary key (SERID_ID)                               
);                                                          
create sequence SEQ_TB_SERID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERID to public;                                     
grant index  on TB_SERID to public;                                     
grant update on TB_SERID to public;                                      
grant delete on TB_SERID to public;                                       
grant insert on TB_SERID to public;                                      
grant select on SEQ_TB_SERID to public;                                        