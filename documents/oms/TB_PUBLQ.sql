/*
================================================================================
��ṹ����:TB_PUBLQ
��ṹ����:�ֽ�������Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLQ;
drop index AK_TB_PUBLQ;
drop table TB_PUBLQ;
create table TB_PUBLQ  (
   PUBLQ_ID             INTEGER                         not null,  /*�ֽ�������Ŀ��ID     */
   PUBLQ001             VARCHAR2(40)                    not null,  /*��Ŀ����             */
   PUBLQ002             VARCHAR2(200)                   not null,  /*��Ŀ����             */
   PUBLQ003             VARCHAR2(100),                             /*��ĿӢ������         */
   PUBLQ004             INTEGER,                                   /*�ϼ��ڵ����Ŀ����   */
   PUBLQ005             VARCHAR2(40),                              /*��Ŀ����             */
   PUBLQ006             VARCHAR2(20),                              /*������               */
   PUBLQ007             VARCHAR2(2)                     not null,  /*�Ƿ�������Ŀ         */
   PUBLQ008             INTEGER                         not null,  /*���                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLQ primary key (PUBLQ_ID)
);
create unique index AK_TB_PUBLQ on TB_PUBLQ (PUBLQ001,PUBLQ002);
create sequence SEQ_TB_PUBLQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLQ to public;
grant index  on TB_PUBLQ to public;
grant update on TB_PUBLQ to public; 
grant delete on TB_PUBLQ to public;  
grant insert on TB_PUBLQ to public; 
grant select on SEQ_TB_PUBLQ to public;   