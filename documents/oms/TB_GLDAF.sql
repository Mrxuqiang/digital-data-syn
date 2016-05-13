/*
================================================================================
��ṹ����:TB_GLDAF
��ṹ����:�����������ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAF;
drop index AK_TB_GLDAF;
drop table TB_GLDAF;
create table TB_GLDAF  (
   GLDAF_ID             INTEGER                         not null,   /*��������������           */
   GLDAF001             VARCHAR2(20)                    not null,   /*���������ʶ               */
   GLDAF002             INTEGER                         not null,   /*����������ID             */
   GLDAF003             INTEGER,                                    /*��������                 */
   GLDAF004             NUMBER(1),                                  /*������                   */
   GLDAF005             NUMBER(2),                                  /*���������               */
   GLDAF006             VARCHAR2(30),                               /*�������ݱ��               */
   GLDAF007             VARCHAR2(60),                               /*������������               */
   GLDAF008             VARCHAR2(1),                                /*�Ƿ����               */ 
   CREATE_USER          VARCHAR2(12),                               /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����             */                               
   CREATE_DATE          DATE,                                       /*��������                 */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                 */
   MODI_DATE            DATE,                                       /*�޸�����                  */
   FLAG                 NUMBER(1),                                  /*����״̬                  */
   constraint PK_TB_GLDAF primary key (GLDAF_ID)
);
create unique index AK_TB_GLDAF on TB_GLDAF (GLDAF001,GLDAF002);
create sequence SEQ_TB_GLDAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAF to public;
grant index  on TB_GLDAF to public;
grant update on TB_GLDAF to public; 
grant delete on TB_GLDAF to public;  
grant insert on TB_GLDAF to public; 
grant select on SEQ_TB_GLDAF to public;   