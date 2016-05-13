/*
================================================================================
��ṹ����:TB_PROAC
��ṹ����:�绰��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAC;
drop index AK_TB_PROAC;
drop table TB_PROAC;
create table TB_PROAC  (
   PROAC_ID             INTEGER                         not null,  /*�绰����ID           */
   PROAC001             INTEGER                         not null,  /*��˾ID               */
   PROAC002             INTEGER                         not null,  /*Ӫ����֯ID           */
   PROAC003             VARCHAR2(16)                    not null,  /*�绰��               */
   PROAC004             VARCHAR2(30),                              /*�绰����             */
   PROAC005             INTEGER                         not null,  /*���ѷ���ID           */
   PROAC006             INTEGER                         not null,  /*Ѻ�����ID           */
   PROAC007             VARCHAR2(1),                               /*��Ч��               */
   PROAC008             VARCHAR2(255),                             /*��ע                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAC primary key (PROAC_ID)
);
create unique index AK_TB_PROAC on TB_PROAC (PROAC002,PROAC003);
create sequence SEQ_TB_PROAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAC to public;
grant index  on TB_PROAC to public;
grant update on TB_PROAC to public; 
grant delete on TB_PROAC to public;  
grant insert on TB_PROAC to public; 
grant select on SEQ_TB_PROAC to public;   