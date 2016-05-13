/*
================================================================================
��ṹ����:TB_PUBFK
��ṹ����:������Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFK;
drop index AK_TB_PUBFK;
drop table TB_PUBFK;
create table TB_PUBFK  (
   PUBFK_ID             INTEGER				  NOT NULL,   /*�������ID                                                              */
   PUBFK001             INTEGER				  NOT NULL,   /*����id                                                   */
   PUBFK002             INTEGER				  NOT NULL,   /*ͼ��id                                                   */
   PUBFK003             NUMBER(5),				      /*����                                                     */
   PUBFK004             NUMBER(5),                                    /*����                                                     */
   PUBFK005             NUMBER(10,2),                                 /*������λ��                                             */
   PUBFK006             NUMBER(10,2),				      /*������λ��                                             */
   PUBFK007             INTEGER,                                      /*�����ͼid                                               */
   PUBFK008             INTEGER,                                      /*�и�                                                     */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա          */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����      */                               
   CREATE_DATE          DATE,                                         /*��������          */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա          */
   MODI_DATE            DATE,                                         /*�޸�����          */
   FLAG                 NUMBER(1),                                    /*����״̬          */
   constraint PK_TB_PUBFK primary key (PUBFK_ID)
);
create unique index AK_TB_PUBFK on TB_PUBFK (PUBFK001,PUBFK002);
create sequence SEQ_TB_PUBFK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFK to public;
grant index  on TB_PUBFK to public;
grant update on TB_PUBFK to public; 
grant delete on TB_PUBFK to public;  
grant insert on TB_PUBFK to public; 
grant select on SEQ_TB_PUBFK to public;   