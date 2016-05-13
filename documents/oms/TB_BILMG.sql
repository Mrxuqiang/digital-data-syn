/*
================================================================================
��ṹ����:TB_BILMG
��ṹ����:��ͬ�ʱ�������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILMG;
drop index AK_TB_BILMG;
drop table TB_BILMG;
create table TB_BILMG  (
   BILMG_ID             INTEGER                         not null,  /*��ͬ�ʱ������������ӱ�ID*/
   BILMG001             INTEGER                         not null,  /*��ͬ�ʱ���������������ID*/
   BILMG002             INTEGER                         not null,  /*��ͬID                   */
   BILMG003             INTEGER                                 ,  /*��Ʒ��ID                 */
   BILMG004             INTEGER                                 ,  /*ϵ��ID                   */
   BILMG005             VARCHAR2(30)      ,                        /*չλ��                   */
   BILMG006             INTEGER,                                   /*�̻�ID                   */
   BILMG007             NUMBER(22,2),                             /*�ʱ��������            */
   BILMG008             DATE,                                      /*SAP����                   */
   BILMG009             VARCHAR2(255),                             /*˵��                      */
   BILMG010             VARCHAR2(1)                             ,  /*�Ƿ���������SAP      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER                                     /*����״̬             */
);
create unique index AK_TB_BILMG on TB_BILMG (BILMG001,BILMG002);
create sequence SEQ_TB_BILMG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMG to public;
grant index  on TB_BILMG to public;
grant update on TB_BILMG to public; 
grant delete on TB_BILMG to public;  
grant insert on TB_BILMG to public; 
grant select on SEQ_TB_BILMG to public;   