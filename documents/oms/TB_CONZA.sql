���Ľ� 14:19:54
  /*
================================================================================
��ṹ����:TB_CONZA
��ṹ����:�ʱ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONZA;
drop index AK_TB_CONZA;
drop table TB_CONZA;
create table TB_CONZA  (
   CONZA_ID             INTEGER                         not null,  /*�ʱ���ID          */
   CONZA001             INTEGER                         not null,  /*Ӫ����֯ID        */
   CONZA002             INTEGER                         not null,  /*��ͬID            */
   CONZA003             INTEGER                         not null,  /*����ID            */
   CONZA004             INTEGER                         not null,  /*С��ID            */
   CONZA005             NUMBER(12,2)                    not null,  /*������֤���׼    */
   CONZA006             NUMBER(12,2)                    not null,  /*������֤��Ӧ��    */
   CONZA007             NUMBER(12,2)                    not null,  /*������֤������    */
   CONZA008             NUMBER(12,2)                    not null,  /*������֤���⸶    */
   CONZA009             NUMBER(12,2)                    not null,  /*������֤���ջ�    */
   CONZA010             NUMBER(12,2)                    not null,  /*������֤��δ��    */
   CONZA011             NUMBER(12,2)                    not null,  /*������֤������    */
   CONZA012             NUMBER(12,2)                    not null,  /*������֤�����    */
   CONZA013             DATE                            not null,  /*��ͬ��ֹ����      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */ 
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_CONZA primary key (CONZA_ID)
);
create unique index AK_TB_CONZA on TB_CONZA (CONZA001,CONZA002);
create sequence SEQ_TB_CONZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZA to public;
grant index  on TB_CONZA to public;
grant update on TB_CONZA to public; 
grant delete on TB_CONZA to public;  
grant insert on TB_CONZA to public; 
grant select on SEQ_TB_CONZA to public;   
