/*
================================================================================
��ṹ����:TB_GLDAL
��ṹ����:���ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAL;
drop index AK_TB_GLDAL;
drop table TB_GLDAL;
create table TB_GLDAL  (
   GLDAL_ID             INTEGER                         not null,  /*����ID             */
   GLDAL001             INTEGER,                                   /*������             */
   GLDAL002             INTEGER,                                   /*������             */
   GLDAL003             VARCHAR2(1),                               /*����״̬           */
   GLDAL004             DATE,                                      /*����ʱ��           */
   GLDAL005             INTEGER,                                   /*��ƺ����˲�ID     */
   GLDAL006             INTEGER,                                   /*�������ID         */
   GLDAL007             INTEGER,                                   /*��˾ID             */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GLDAL primary key (GLDAL_ID)
);
create unique index AK_TB_GLDAL on TB_GLDAL (GLDAL001);
create sequence SEQ_TB_GLDAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAL to public;
grant index  on TB_GLDAL to public;
grant update on TB_GLDAL to public; 
grant delete on TB_GLDAL to public;  
grant insert on TB_GLDAL to public; 
grant select on SEQ_TB_GLDAL to public;   