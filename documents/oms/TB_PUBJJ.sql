/*
================================================================================
��ṹ����:TB_PUBJJ
��ṹ����:����������־��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJJ;
drop index AK_TB_PUBJJ;
drop table TB_PUBJJ;
create table TB_PUBJJ  (
   PUBJJ_ID             INTEGER                         not null,  /*����������־ID         */
   PUBJJ001             INTEGER                         not null,  /*�̳�ID                 */   
   PUBJJ002             INTEGER                         not null,  /*����ID                 */
   PUBJJ003             INTEGER,                                   /*Ʒ��ID                 */
   PUBJJ004             INTEGER ,                                  /*չλID                 */
   PUBJJ005             INTEGER,                                   /*��ͬID                 */
   PUBJJ006             VARCHAR2(2),                               /*�������� 1���̻�Ӫҵִ��		2���̻�˰��Ǽ�֤	 3����Ȩ��	4�����֤	5���ʼ챨��	6����Ʒ˵����	7����Ʒ�ϸ�֤8��3C	9�����ص�	10��������ʾ��	11������֤��	12���̻���֯��������֤  13������Ӫҵִ�� 14������˰��Ǽ� 15 ������֯�������� 16 �����̱�ע��                  */ 
   PUBJJ007             DATE,                                      /*����                   */   
   PUBJJ008             VARCHAR2(1),                               /*״̬ 0��ȱʧ��1������  */   
   PUBJJ009             VARCHAR2(30),                              /*ԭ��Ч��               */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER,                                    /*����״̬               */
   constraint PK_TB_PUBJJ primary key (PUBJJ_ID)
);
create unique index AK_TB_PUBJJ on TB_PUBJJ (PUBJJ001,PUBJJ002,PUBJJ003,PUBJJ004,PUBJJ005,PUBJJ006,PUBJJ007,PUBJJ008,FLAG);
create sequence SEQ_TB_PUBJJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJJ to public;
grant index  on TB_PUBJJ to public;
grant update on TB_PUBJJ to public; 
grant delete on TB_PUBJJ to public;  
grant insert on TB_PUBJJ to public; 
grant select on SEQ_TB_PUBJJ to public;   