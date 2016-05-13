/*
================================================================================
��ṹ����:TB_AWBAA
��ṹ����:��Ŀ���ඨ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAA;
drop index AK_TB_AWBAA;
drop table TB_AWBAA;
create table TB_AWBAA  (
   AWBAA_ID             INTEGER                         not null,  /*��Ŀ����ID     */
   AWBAA001             VARCHAR2(4) ,                              /*��Ŀ������       */
   AWBAA002             VARCHAR2(30),                              /*��Ŀ��������       */
   AWBAA003             INTEGER                         not null,  /*ģ��ID             */
   AWBAA004             INTEGER,                                   /*Ĭ�Ͽ�ĿID            */
   AWBAA005             VARCHAR2(1)                     not null,  /*�����ʶ1����Ŀ2������ */
   AWBAA006             INTEGER,                                   /*��˾ID              */
   AWBAA007             INTEGER,                                   /*�������ID          */
   AWBAA008             INTEGER,                                   /*��������ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_AWBAA primary key (AWBAA_ID)
);
create sequence SEQ_TB_AWBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAA to public;
grant index  on TB_AWBAA to public;
grant update on TB_AWBAA to public; 
grant delete on TB_AWBAA to public;  
grant insert on TB_AWBAA to public; 
grant select on SEQ_TB_AWBAA to public;   