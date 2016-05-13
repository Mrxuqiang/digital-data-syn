/*
================================================================================
��ṹ����:TB_PUBFJ
��ṹ����:�����ͼ�θ���λ�ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFJ;
drop index AK_TB_PUBFJ;
drop table TB_PUBFJ;
create table TB_PUBFJ  (
   PUBFJ_ID             INTEGER				  NOT NULL,   /*����λ��ID                                                              */
   PUBFJ001             INTEGER				  NOT NULL,   /*����id                                                         */
   PUBFJ002             INTEGER				  NOT NULL,   /*ͼ��id                                                         */
   PUBFJ003             INTEGER				  NOT NULL,   /*�����                                                         */
   PUBFJ004             NUMBER(10,2),                                 /*�����λ��                                                     */
   PUBFJ005             NUMBER(10,2),                                 /*��ඥλ��                                                     */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա          */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����      */                               
   CREATE_DATE          DATE,                                         /*��������          */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա          */
   MODI_DATE            DATE,                                         /*�޸�����          */
   FLAG                 NUMBER(1),                                    /*����״̬          */
   constraint PK_TB_PUBFJ primary key (PUBFJ_ID)
);
create unique index AK_TB_PUBFJ on TB_PUBFJ (PUBFJ001,PUBFJ002,PUBFJ003);
create sequence SEQ_TB_PUBFJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFJ to public;
grant index  on TB_PUBFJ to public;
grant update on TB_PUBFJ to public; 
grant delete on TB_PUBFJ to public;  
grant insert on TB_PUBFJ to public; 
grant select on SEQ_TB_PUBFJ to public;   