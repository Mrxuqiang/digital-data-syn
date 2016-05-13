/*
================================================================================
��ṹ����:TB_MMSCA
��ṹ���ƣ����õ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MMSCA;
drop index AK_TB_MMSCA;
drop table TB_MMSCA;
create table TB_MMSCA  (
   MMSCA_ID           INTEGER                          not null,         /*���õ���id     */   
   MMSCA001           INTEGER                          not null,         /*����id           */   
   MMSCA002           VARCHAR2(30)                     not null,         /*����             */  
   MMSCA003           DATE                             not null,         /*��������         */ 
   MMSCA004           INTEGER,                                           /*������Աid       */  
   MMSCA005           INTEGER,                                           /*���ò���id       */
   MMSCA006           INTEGER,                                           /*Ӫ����֯id       */
   MMSCA007           VARCHAR2(256),                                     /*��ע             */
   MMSCA008           DATE,                                              /*¼������         */
   MMSCA009           INTEGER,                                           /*¼����id         */ 
   MMSCA010           DATE,                                              /*�������         */
   MMSCA011           INTEGER,                                           /*�����id          */ 
   MMSCA012           VARCHAR2(1),                                       /*����״̬          */         
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_MMSCA primary key (MMSCA_ID)
);
create unique index AK_TB_MMSCA on TB_MMSCA (MMSCA001,MMSCA002,FLAG);
create sequence SEQ_TB_MMSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MMSCA to public;
grant index  on TB_MMSCA to public;
grant update on TB_MMSCA to public; 
grant delete on TB_MMSCA to public;  
grant insert on TB_MMSCA to public; 
grant select on SEQ_TB_MMSCA to public;   